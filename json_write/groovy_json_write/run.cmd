@echo off

set PATH=%GROOVY_HOME%\bin
set PATH=c:\Java\jre\bin;%PATH%
set OS=Windows_NT

call build N
java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar json_write.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar json_writeManifest.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar;json_write.jar json_write
rem java -cp C:\groovy\embeddable\groovy-all-2.4.12.jar;. json_write

rem as a script
rem groovy json_write
rem groovy json_write.groovy

pause
