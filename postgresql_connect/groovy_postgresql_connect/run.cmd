@echo off

set PATH=%GROOVY_HOME%\bin
set PATH=c:\Java\jre\bin;%PATH%
set OS=Windows_NT

call build N
java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar postgresql_connect.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar postgresql_connectManifest.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar;postgresql_connect.jar postgresql_connect
rem java -cp C:\groovy\embeddable\groovy-all-2.4.12.jar;. postgresql_connect

rem as a script
rem groovy postgresql_connect
rem groovy postgresql_connect.groovy

pause
