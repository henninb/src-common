@echo off

set PATH=%GROOVY_HOME%\bin
set PATH=c:\Java\jre\bin;%PATH%
set OS=Windows_NT

call build N
java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar caesar_cipher.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar caesar_cipherManifest.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar;caesar_cipher.jar caesar_cipher
rem java -cp C:\groovy\embeddable\groovy-all-2.4.12.jar;. caesar_cipher

rem as a script
rem groovy caesar_cipher
rem groovy caesar_cipher.groovy

pause
