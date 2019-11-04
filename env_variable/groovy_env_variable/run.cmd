@echo off

set PATH=%GROOVY_HOME%\bin
set PATH=c:\Java\jre\bin;%PATH%
set OS=Windows_NT

call build N
java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar env_variable.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar env_variableManifest.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar;env_variable.jar env_variable
rem java -cp C:\groovy\embeddable\groovy-all-2.4.12.jar;. env_variable

rem as a script
rem groovy env_variable
rem groovy env_variable.groovy

pause
