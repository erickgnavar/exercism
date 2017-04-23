-module(strain).
-export([keep/2, discard/2, test_version/0]).

keep(_P, []) ->
    [];
keep(P, [H|T]) ->
    case P(H) of
        true ->
            [H|keep(P, T)];
        false ->
            keep(P, T)
    end.

discard(P, L) ->
    keep(fun(X) -> not P(X) end, L).

test_version() ->
    1.
