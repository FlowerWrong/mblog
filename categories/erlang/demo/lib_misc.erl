%%%-------------------------------------------------------------------
%%% @author yy
%%% @copyright (C) 2015, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 06. 八月 2015 下午5:58
%%% 列表推导
%%%-------------------------------------------------------------------
-module(lib_misc).
-author("yy").

%% API
-export([qsort/1, pythag/1]).

qsort([]) -> [];
qsort([Pivot|T]) ->
  qsort([X || X <- T, X < Pivot])
  ++ [Pivot] ++
  qsort([X || X <- T, X >= Pivot]).


%%% 毕达哥拉斯三元数组
pythag(N) ->
  [ {A, B, C} ||
      A <- lists:seq(1, N),
      B <- lists:seq(1, N),
      C <- lists:seq(1, N),
      A + B + C =< N,
      A * A + B * B =:= C * C
  ].