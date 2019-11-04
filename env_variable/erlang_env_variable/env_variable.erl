% comment
-module(env_variable).
-compile(export_all).

floor(X) -> trunc(X).

% Variables must begin with a capital letter or an underscore
env_variable_function(N) -> (N + N - N) * (N div 1) * floor(1.25).

for_loop(X) when X == 0 -> 0;
for_loop(X) when X > 0 -> for_loop(X-1),
                          io:fwrite(os:getenv("OS")),
                          io:fwrite("\nenv_variable_function(~w)=<~w>~n",[X,env_variable_function(X)]).

start() ->
  for_loop(9).
