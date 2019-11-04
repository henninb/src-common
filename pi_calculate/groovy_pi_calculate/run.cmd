@echo off

set PATH=%GROOVY_HOME%\bin
set PATH=c:\Java\jre\bin;%PATH%
set OS=Windows_NT

call build N
java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar pi_calculate.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar pi_calculateManifest.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar;pi_calculate.jar pi_calculate
rem java -cp C:\groovy\embeddable\groovy-all-2.4.12.jar;. pi_calculate

rem as a script
rem groovy pi_calculate
rem groovy pi_calculate.groovy

pause
