@echo off

set PATH=%GROOVY_HOME%\bin
set PATH=c:\Java\jre\bin;%PATH%
set OS=Windows_NT

call build N
java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar exception_handler.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar exception_handlerManifest.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar;exception_handler.jar exception_handler
rem java -cp C:\groovy\embeddable\groovy-all-2.4.12.jar;. exception_handler

rem as a script
rem groovy exception_handler
rem groovy exception_handler.groovy

pause
