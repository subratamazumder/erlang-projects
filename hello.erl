-module(hello).
-export([double/1]).
-export([multiply/2]).

double(X) ->
    2 * X.
multiply(X, Y) ->
    X * Y.