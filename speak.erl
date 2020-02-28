%%%-------------------------------------------------------------------
%%% @author subratamazumder
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 29. Feb 2020 03:34
%%%-------------------------------------------------------------------
-module(speak).
-author("subratamazumder").

%% API
-export([say/2, run/0]).
say(What, 0) ->
  done;
say(What, Times) ->
  io:fwrite(What ++ "\n"),
  say(What, Times - 1).

run() ->
  spawn(speak, say, ["Pepa", 4]),
  spawn(speak, say, ["Pig", 3]).


