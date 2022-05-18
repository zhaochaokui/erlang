-module(saddle_points).

-export([saddle_points/1]).

-record(matrix,
       {x,
	y,
	element
       })

%%saddle_points(_Matrix) ->
%%	undefined.

saddle_points(Matrix) when is_list(Matrix)->
   saddle_points(Matrix,[]).

saddle_points([],Matrix,Acc)->Acc;
saddle_points([Point = #matrix{x = X, y= Y, element = E}|Rest],Matrix,Acc)->
	L = [Ele||#matrix{x = Xl,element = Ele}<-Matrix,Xl=:=X],
	L1 = [Ele||#matrix{y = Yl,element = Ele}<-Matrix,Yl=:=Y],
	case E >= lists:max(L) andalso E =< lists:min(L1)  of
		true->
			saddle_points(Rest,Matrix,[Point|Acc]);
		false->
		   saddle_points(Rest,Matrix,Acc)
	end.		     
	
