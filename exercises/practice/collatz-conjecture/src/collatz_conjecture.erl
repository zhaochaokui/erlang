-module(collatz_conjecture).

-export([steps/1]).


%%steps(_N) -> undefined.

steps(N) when is_integer(N)->
  steps(N,0).
steps(1,M)->
  M;
steps(N,M) when N rem 2 =:= 0 ->
  steps(N/2,M+1);
steps(N,M)->
  steps(N*3+1,M+1).
