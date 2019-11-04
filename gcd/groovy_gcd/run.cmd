@echo off

set PATH=%GROOVY_HOME%\bin
set PATH=c:\Java\jre\bin;%PATH%
set OS=Windows_NT

call build N
java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar gcd.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar gcdManifest.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar;gcd.jar gcd
rem java -cp C:\groovy\embeddable\groovy-all-2.4.12.jar;. gcd

rem as a script
rem groovy gcd
rem groovy gcd.groovy

pause
