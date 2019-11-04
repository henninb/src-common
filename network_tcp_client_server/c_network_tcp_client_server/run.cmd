@echo off

set OS=Windows_NT

call build N
if exist network_tcp_client_server.exe (
    network_tcp_client_server.exe
) else (
    if NOT exist network_tcp_client_server.c (
        echo copy network_tcp_client_server.
        copy "..\..\network_tcp_client_server\c_network_tcp_client_server\network_tcp_client_server.c" "network_tcp_client_server.c"
    )
)

pause
