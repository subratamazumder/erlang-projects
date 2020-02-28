%%%-------------------------------------------------------------------
%%% @author subratamazumder
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 15. Feb 2020 03:34
%%%-------------------------------------------------------------------
-module(atoms).
-author("subratamazumder").

%% API
-export([convert/2]).

convert(M, inch) ->
    M / 2.54;

convert(N, centimeter) ->
    N * 2.54.