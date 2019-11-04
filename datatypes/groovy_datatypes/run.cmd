@echo off

set PATH=%GROOVY_HOME%\bin
set PATH=c:\Java\jre\bin;%PATH%
set OS=Windows_NT

call build N
java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar datatypes.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar datatypesManifest.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar;datatypes.jar datatypes
rem java -cp C:\groovy\embeddable\groovy-all-2.4.12.jar;. datatypes

rem as a script
rem groovy datatypes
rem groovy datatypes.groovy

pause
