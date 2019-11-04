@echo off

set PATH=%GROOVY_HOME%\bin
set PATH=c:\Java\jre\bin;%PATH%
set OS=Windows_NT

call build N
java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar degrees_to_radians.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar degrees_to_radiansManifest.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar;degrees_to_radians.jar degrees_to_radians
rem java -cp C:\groovy\embeddable\groovy-all-2.4.12.jar;. degrees_to_radians

rem as a script
rem groovy degrees_to_radians
rem groovy degrees_to_radians.groovy

pause
