-module(hello_world).
-export([hello/0, test_version/0]).

test_version() ->
  2.

hello() ->
    "Hello, World!".
