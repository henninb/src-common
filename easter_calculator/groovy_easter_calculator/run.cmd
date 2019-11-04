@echo off

set PATH=%GROOVY_HOME%\bin
set PATH=c:\Java\jre\bin;%PATH%
set OS=Windows_NT

call build N
java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar easter_calculator.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar easter_calculatorManifest.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar;easter_calculator.jar easter_calculator
rem java -cp C:\groovy\embeddable\groovy-all-2.4.12.jar;. easter_calculator

rem as a script
rem groovy easter_calculator
rem groovy easter_calculator.groovy

pause
