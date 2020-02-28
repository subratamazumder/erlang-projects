%%%-------------------------------------------------------------------
%%% @author subratamazumder
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 29. Feb 2020 03:49
%%%-------------------------------------------------------------------
-module(talk).
-author("subratamazumder").

%% API
-export([run/0,pepap/0,dadyp/2]).
pepap() ->
  receive
    {message, PId} ->
      io:fwrite("pepap got a message \n"),
      PId ! message,
      pepap();
    finished -> io:fwrite("pepap is finished \n"),

  end
  .
dadyp(0, PId) ->
  PId ! finished,
  io:fwrite("dadyp finished \n");

dadyp(N, PId) ->
  io:fwrite(N ++ PId ++ "\n"),
  PId ! {message, self()},
  receive
    message -> io:fwrite("dadyp got a message \n")
  end,
  dadyp(N-1, PId).


run() ->
  PId = spawn(talk, pepap, []),
  spawn(talk, dadyp, [3, PId]).