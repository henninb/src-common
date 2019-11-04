% comment
-module(recursive_for_loop).
%-export([start/0]).
-compile(export_all).

% Variables must begin with a capital letter or an underscore
example_function(N) -> N.

for_loop(X) when X == 0 -> 0;
for_loop(X) when X > 0 -> for_loop(X-1), io:fwrite("example_function(~w)=<~w>~n",[X,example_function(X)]).

start() ->
  for_loop(25).
