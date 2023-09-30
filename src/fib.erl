-module(fib).
-export([fib/1]).

fib(N) when N >= 0 ->
	fib(N, 0, 1).

fib(0, _Current, Next) ->
	Next;
fib(N, Current, Next) ->
	fib(N-1, Next, Current + Next).
