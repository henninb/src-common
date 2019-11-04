@echo off

set PATH=%GROOVY_HOME%\bin
set PATH=c:\Java\jre\bin;%PATH%
set OS=Windows_NT

call build N
java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar factors.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar factorsManifest.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar;factors.jar factors
rem java -cp C:\groovy\embeddable\groovy-all-2.4.12.jar;. factors

rem as a script
rem groovy factors
rem groovy factors.groovy

pause
