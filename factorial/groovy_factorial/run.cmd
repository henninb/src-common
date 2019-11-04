@echo off

set PATH=%GROOVY_HOME%\bin
set PATH=c:\Java\jre\bin;%PATH%
set OS=Windows_NT

call build N
java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar factorial.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar factorialManifest.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar;factorial.jar factorial
rem java -cp C:\groovy\embeddable\groovy-all-2.4.12.jar;. factorial

rem as a script
rem groovy factorial
rem groovy factorial.groovy

pause
