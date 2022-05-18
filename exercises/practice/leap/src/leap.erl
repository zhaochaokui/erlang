-module(leap).

-export([leap_year/1]).


%%leap_year(_Year) -> undefined.

leap_year(Year) ->
  case Year rem 4 =:= 0 andalso Year rem 100 =/= 0 of
    true->
      true;
    false->
      case Year rem 400 =:= 0 of
        true-> true;
        false->
          false
      end
   end   
  
