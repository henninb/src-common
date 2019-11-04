% comment
-module(fibonacci).
%-export([start/0]).
-compile(export_all).

% Variables must begin with a capital letter or an underscore

fibonacci(0) -> 0 ;
fibonacci(1) -> 1 ;
fibonacci(N) when N > 0 -> fibonacci(N-1) + fibonacci(N-2).

for_loop(X) when X == 0 -> 0;
for_loop(X) when X > 0 -> for_loop(X-1), io:fwrite("fibonacci(~w)=<~w>~n",[X,fibonacci(X)]).

start() ->
  for_loop(24).
