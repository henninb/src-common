% comment
-module(example).
-compile(export_all).

floor(X) -> trunc(X).

% Variables must begin with a capital letter or an underscore
example_function(N) -> (N + N - N) * (N div 1) * floor(1.25).

for_loop(X) when X == 0 -> 0;
for_loop(X) when X > 0 -> for_loop(X-1), io:fwrite("example_function(~w)=<~w>~n",[X,example_function(X)]).

start() ->
  for_loop(9).
