%%%-------------------------------------------------------------------
%%% @author subratamazumder
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 15. Feb 2020 03:34
%%%-------------------------------------------------------------------
-module(touples).
-author("subratamazumder").

%% API
-export([convert/1]).

convert({inch, M}) ->
    {centimeter, M / 2.54};

convert({centimeter, N}) ->
    {inch, N * 2.54}.