@echo off

set PATH=%GROOVY_HOME%\bin
set PATH=c:\Java\jre\bin;%PATH%
set OS=Windows_NT

call build N
java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar passwd_input.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar passwd_inputManifest.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar;passwd_input.jar passwd_input
rem java -cp C:\groovy\embeddable\groovy-all-2.4.12.jar;. passwd_input

rem as a script
rem groovy passwd_input
rem groovy passwd_input.groovy

pause
