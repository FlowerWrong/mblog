%%%-------------------------------------------------------------------
%%% @author yy
%%% @copyright (C) 2015, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 06. 八月 2015 下午4:49
%%%-------------------------------------------------------------------
-module(geometry).
-author("yy").

%% API
-export([area/1, test/0]).

area({rectangle, Width, Height}) -> Width * Height;
area({square, Side}) -> Side * Side.

test() ->
  12 = area({rectangle, 3, 4}),
  144 = area({square, 12}),
  tests_worked.
