@echo off

set PATH=%GROOVY_HOME%\bin
set PATH=c:\Java\jre\bin;%PATH%
set OS=Windows_NT

call build N
java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar roman.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar romanManifest.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar;roman.jar roman
rem java -cp C:\groovy\embeddable\groovy-all-2.4.12.jar;. roman

rem as a script
rem groovy roman
rem groovy roman.groovy

pause
