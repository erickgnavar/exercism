-module(accumulate).
-export([accumulate/2, test_version/0]).

accumulate(_F, []) ->
    [];
accumulate(F, [Head | Tail]) ->
    [F(Head) | accumulate(F, Tail)].

test_version() ->
    1.
