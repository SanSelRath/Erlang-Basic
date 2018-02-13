%%%-------------------------------------------------------------------
%%% @author santhosh
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 13. Feb 2018 5:57 PM
%%%-------------------------------------------------------------------
-module(finding_prime).
-author("santhosh").

%% API
-export([is_prime/1,print_prime/2]).

is_prime(1) -> true;

is_prime(2) -> true ;

is_prime(N) when N rem 2 =:= 0 -> false;

is_prime(N) -> check_prime(N,math:sqrt(N),3).

check_prime(N,_,Check) when N rem Check == 0 -> false;
check_prime(N,Limit,Check) when Check =< Limit -> check_prime(N,Limit,Check+2);
check_prime(_,_,_) -> true.


print_prime(Start,End) when Start =< End ->
  case is_prime(Start) of
    true ->
      io:format("The prime number is ~p is ~p ~n",[Start,is_prime(Start)]);
    false -> false
  end,
  print_prime(Start+1,End);
print_prime(_,_)-> done.
