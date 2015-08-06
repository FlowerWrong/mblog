%%%-------------------------------------------------------------------
%%% @author yy
%%% @copyright (C) 2015, <COMPANY>
%%% @doc
%%% erlc hello.erl
%%% erl -noshell -s hello start -s init stop
%%% @end
%%% Created : 06. 八月 2015 下午1:20
%%%-------------------------------------------------------------------
-module(hello).
-author("yy").

%% API
-export([start/0]).

start() ->
  io:format("hello world~n").
