-module(fib_original).
-export([fib/1]).

fib(N)->
	fib(N,0,1,[0]).
fib(0, _Current, _Next, Fibs)-> lists:reverse(Fibs);

fib(N, Current, Next, Fibs)->
	fib(N-1, Next, Current+Next, [Next|Fibs]).
