% comment
-module(celsius_conversion).
-compile(export_all).

toFahrenheit(X) -> X * (9.0 / 5.0) + 32.0.
toCelsius(X) -> (X - 32.0) * (5.0 / 9.0).

start() ->
  io:fwrite("toFahrenheit(~w)=<~w>~n",[21,toFahrenheit(21.0)]),
  io:fwrite("toCelsius(~w)=<~w>~n",[70,toCelsius(70.0)]).
