@echo off

set PATH=%GROOVY_HOME%\bin
set PATH=c:\Java\jre\bin;%PATH%
set OS=Windows_NT

call build N
java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar linear_combination.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar linear_combinationManifest.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar;linear_combination.jar linear_combination
rem java -cp C:\groovy\embeddable\groovy-all-2.4.12.jar;. linear_combination

rem as a script
rem groovy linear_combination
rem groovy linear_combination.groovy

pause
