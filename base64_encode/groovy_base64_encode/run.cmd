@echo off

set PATH=%GROOVY_HOME%\bin
set PATH=c:\Java\jre\bin;%PATH%
set OS=Windows_NT

call build N
java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar base64_encode.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar base64_encodeManifest.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar;base64_encode.jar base64_encode
rem java -cp C:\groovy\embeddable\groovy-all-2.4.12.jar;. base64_encode

rem as a script
rem groovy base64_encode
rem groovy base64_encode.groovy

pause
