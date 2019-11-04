@echo off

set PATH=%GROOVY_HOME%\bin
set PATH=c:\Java\jre\bin;%PATH%
set OS=Windows_NT

call build N
java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar epoch_conversion.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar epoch_conversionManifest.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar;epoch_conversion.jar epoch_conversion
rem java -cp C:\groovy\embeddable\groovy-all-2.4.12.jar;. epoch_conversion

rem as a script
rem groovy epoch_conversion
rem groovy epoch_conversion.groovy

pause
