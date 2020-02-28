%%%-------------------------------------------------------------------
%%% @author subratamazumder
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 15. Feb 2020 03:34
%%%-------------------------------------------------------------------
-module(hello).
-author("subratamazumder").

%% API
-export([double/1]).
-export([multiply/2]).

double(X) ->
    2 * X.
multiply(X, Y) ->
    X * Y.