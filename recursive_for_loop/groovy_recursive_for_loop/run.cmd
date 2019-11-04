@echo off

set PATH=%GROOVY_HOME%\bin
set PATH=c:\Java\jre\bin;%PATH%
set OS=Windows_NT

call build N
java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar recursive_for_loop.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar recursive_for_loopManifest.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar;recursive_for_loop.jar recursive_for_loop
rem java -cp C:\groovy\embeddable\groovy-all-2.4.12.jar;. recursive_for_loop

rem as a script
rem groovy recursive_for_loop
rem groovy recursive_for_loop.groovy

pause
