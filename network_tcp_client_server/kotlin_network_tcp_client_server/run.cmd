@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist NetworkTcpClientServer.kt (
    java -jar NetworkTcpClientServer.jar
) else (
    if NOT exist NetworkTcpClientServer.java (
        echo copy network_tcp_client_server.
        copy "..\..\network_tcp_client_server\kotlin_network_tcp_client_server\NetworkTcpClientServer.kt" "NetworkTcpClientServer.kt"
    )
)

pause
