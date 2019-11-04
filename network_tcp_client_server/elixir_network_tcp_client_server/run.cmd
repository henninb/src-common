@echo off

set PATH=C:\ProgramData\chocolatey\lib\Elixir\bin
set PATH=C:\ProgramData\chocolatey\bin;%PATH%

call build N
rem call elixir network_tcp_client_server.exs
call elixir -e NetworkTcpClientServer.main

pause