@echo off

set PATH=%GROOVY_HOME%\bin
set PATH=c:\Java\jre\bin;%PATH%
set OS=Windows_NT

call build N
java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar network_tcp_client_server.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar network_tcp_client_serverManifest.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar;network_tcp_client_server.jar network_tcp_client_server
rem java -cp C:\groovy\embeddable\groovy-all-2.4.12.jar;. network_tcp_client_server

rem as a script
rem groovy network_tcp_client_server
rem groovy network_tcp_client_server.groovy

pause
