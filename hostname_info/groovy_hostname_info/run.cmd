@echo off

set PATH=%GROOVY_HOME%\bin
set PATH=c:\Java\jre\bin;%PATH%
set OS=Windows_NT

call build N
java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar hostname_info.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar hostname_infoManifest.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar;hostname_info.jar hostname_info
rem java -cp C:\groovy\embeddable\groovy-all-2.4.12.jar;. hostname_info

rem as a script
rem groovy hostname_info
rem groovy hostname_info.groovy

pause
