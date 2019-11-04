% comment
-module(date_today).
%-export([start/0]).
-compile(export_all).

date_today() ->
  Local = calendar:local_time(),
  {{Year, Month, Day}, _ } = Local,
  { _, {Hour, Min, Sec}} = Local,
  io:fwrite("local=<~w-~w-~w ~w:~w:~w>~n",[Year,Month,Day,Hour,Min,Sec]).

date_utc() ->
  Utc = calendar:universal_time(),
  {{Year, Month, Day}, _ } = Utc,
  { _, {Hour, Min, Sec}} = Utc,
  io:fwrite("utc=<~w-~w-~w ~w:~w:~w>~n",[Year,Month,Day,Hour,Min,Sec]).

start() ->
  date_utc(),
  date_today().
