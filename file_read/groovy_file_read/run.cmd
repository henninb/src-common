@echo off

set PATH=%GROOVY_HOME%\bin
set PATH=c:\Java\jre\bin;%PATH%
set OS=Windows_NT

call build N
java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar file_read.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar file_readManifest.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar;file_read.jar file_read
rem java -cp C:\groovy\embeddable\groovy-all-2.4.12.jar;. file_read

rem as a script
rem groovy file_read
rem groovy file_read.groovy

pause
