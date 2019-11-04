@echo off

set PATH=%GROOVY_HOME%\bin
set PATH=c:\Java\jre\bin;%PATH%
set OS=Windows_NT

call build N
java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar euler_phi.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar euler_phiManifest.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar;euler_phi.jar euler_phi
rem java -cp C:\groovy\embeddable\groovy-all-2.4.12.jar;. euler_phi

rem as a script
rem groovy euler_phi
rem groovy euler_phi.groovy

pause
