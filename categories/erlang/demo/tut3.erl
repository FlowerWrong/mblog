-module(tut3).
-export([convert_length/1]).

convert_length({centimeter, X}) ->
  {inch, X / 2.54};
convert_length({inch, Y}) ->
  {centimeter, Y * 2.54}.
