@echo off

set PATH=%GROOVY_HOME%\bin
set PATH=c:\Java\jre\bin;%PATH%
set OS=Windows_NT

call build N
java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar file_write.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar file_writeManifest.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar;file_write.jar file_write
rem java -cp C:\groovy\embeddable\groovy-all-2.4.12.jar;. file_write

rem as a script
rem groovy file_write
rem groovy file_write.groovy

pause
