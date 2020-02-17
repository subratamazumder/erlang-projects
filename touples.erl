-module(touples).
-export([convert/1]).

convert({inch, M}) ->
    {centimeter, M / 2.54};

convert({centimeter, N}) ->
    {inch, N * 2.54}.