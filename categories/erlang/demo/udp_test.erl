-module(udp_test).
-export([start_server/0, client/1]).

start_server() ->
  spawn(fun() -> server(4000) end).

%% server
server(Port) ->
  {ok, Socket} = gen_udp:open(Port, [binary]),
  io:format("Server opened socket:~p~n", [Socket]),
  loop(Socket).

loop(Socket) ->
  receive
    {udp, Socket, Host, Port, Bin} = Msg ->
      io:format("Server received:~p~n", [Msg]),
      N = binary_to_term(Bin),
      Fac = fac(N),
      gen_udp:send(Socket, Host, Port, term_to_binary(Fac)),
      loop(Socket)
  end.

fac(0) -> 1;
fac(N) -> N * fac(N - 1).

%% client
client(N) ->
  {ok, Socket} = gen_udp:open(0, [binary]),
  io:format("Client opened socket=~p~n", [Socket]),
  ok = gen_udp:send(Socket, "localhost", 4000, term_to_binary(N)),
  Value = receive
            {udp, Socket, _, _, Bin} = Msg ->
              io:format("Client received:~p~n", [Msg]),
              binary_to_term(Bin)
          after 2000 ->
                  0
          end,
  gen_udp:close(Socket),
  Value.
