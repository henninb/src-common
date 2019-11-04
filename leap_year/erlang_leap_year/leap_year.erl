% comment
-module(leap_year).
%-export([start/0]).
-compile(export_all).

is_leap_year(Year) when Year rem 400 =:= 0 -> true;
is_leap_year(Year) when Year rem 100 =:= 0 -> false;
is_leap_year(Year) when Year rem   4 =:= 0 -> true;
is_leap_year(_)                            -> false.

for_loop(X) when X == 0 -> 0;
for_loop(X) when X > 0 -> for_loop(X-1), io:fwrite("is_leap_year(~w)=<~w>~n",[X,is_leap_year(X)]).

start() ->
  io:fwrite(" *** need to fix *** ~n"),
  for_loop(10),
  io:fwrite(" *** need to fix *** ~n").
