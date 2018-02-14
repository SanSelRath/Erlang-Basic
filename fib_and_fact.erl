%%%-------------------------------------------------------------------
%%% @author santhosh
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 14. Feb 2018 11:18 AM
%%%-------------------------------------------------------------------
-module(fib_and_fact).
-author("santhosh").

%% API
-export([fact/1,fib/1]).

fact(1) -> 1;
fact(N) when N >1 -> N* fact(N-1);
fact(_) -> no_negative_values.

fib(1) -> [0];
fib(N) when N < 0 -> no_negative_values;
fib(N) -> fibo(N,0,1,[0,1]).

fibo(N,_,_,Series) when N =:= length(Series)-> Series;
fibo(N,FirstNum,SecondNum,Series) when N > length(Series) ->
  fibo(N,SecondNum,FirstNum+SecondNum,Series++[FirstNum+SecondNum]).