@echo off

set PATH=%GROOVY_HOME%\bin
set PATH=c:\Java\jre\bin;%PATH%
set OS=Windows_NT

call build N
java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar hanoi.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar hanoiManifest.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar;hanoi.jar hanoi
rem java -cp C:\groovy\embeddable\groovy-all-2.4.12.jar;. hanoi

rem as a script
rem groovy hanoi
rem groovy hanoi.groovy

pause
