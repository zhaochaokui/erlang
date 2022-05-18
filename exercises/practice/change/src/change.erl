-module(change).

-export([find_fewest_coins/2]).


%%find_fewest_coins(_Target, _Coins) -> undefined.

find_fewest_coins(Target,Coins)->
  L = [E||E<-Coins,E =< Target],
   find_fewest_coins(Target,L,[]).
      
find_fewest_coins(0,_,Acc)->
  Acc;
find_fewest_coins(Target,L,Acc)->
   find_fewest_coins(Target - lists:max(L),lists:delete(lists:max(L),L),[lists:max(L)|Acc]).
