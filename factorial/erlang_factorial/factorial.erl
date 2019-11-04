% comment
-module(factorial).
%-export([start/0]).
-compile(export_all).

% Variables must begin with a capital letter or an underscore

factorial(N) when N == 0 -> 1;
factorial(N) when N > 0  -> N*factorial(N-1).

for_loop(X) when X == 0 -> 0;
for_loop(X) when X > 0 -> for_loop(X-1), io:fwrite("factorial(~w)=<~w>~n",[X,factorial(X)]).

start() ->
  for_loop(14).
