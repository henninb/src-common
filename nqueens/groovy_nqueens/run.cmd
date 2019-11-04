@echo off

set PATH=%GROOVY_HOME%\bin
set PATH=c:\Java\jre\bin;%PATH%
set OS=Windows_NT

call build N
java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar nqueens.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar nqueensManifest.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar;nqueens.jar nqueens
rem java -cp C:\groovy\embeddable\groovy-all-2.4.12.jar;. nqueens

rem as a script
rem groovy nqueens
rem groovy nqueens.groovy

pause
