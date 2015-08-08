-module(walks).
-export([plan_route/2]).

%%% type specification
-spec plan_route(From:: point(), To:: point()) -> route().

%%% type declaration
-type direction() :: north | south | east | west.
-type point() :: {integer(), integer()}.
-type route() :: [{go, direction(), integer()}].
