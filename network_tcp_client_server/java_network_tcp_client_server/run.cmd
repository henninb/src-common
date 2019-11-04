@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist NetworkTcpClientServer.java (
    java -jar NetworkTcpClientServer.jar
) else (
    if NOT exist NetworkTcpClientServer.java (
        echo copy network_tcp_client_server.
        copy "..\..\network_tcp_client_server\java_network_tcp_client_server\NetworkTcpClientServer.java" "NetworkTcpClientServer.java"
    )
)

pause
