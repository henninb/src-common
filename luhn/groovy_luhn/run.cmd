@echo off

set PATH=%GROOVY_HOME%\bin
set PATH=c:\Java\jre\bin;%PATH%
set OS=Windows_NT

call build N
java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar luhn.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar luhnManifest.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar;luhn.jar luhn
rem java -cp C:\groovy\embeddable\groovy-all-2.4.12.jar;. luhn

rem as a script
rem groovy luhn
rem groovy luhn.groovy

pause
