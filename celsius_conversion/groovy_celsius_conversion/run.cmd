@echo off

set PATH=%GROOVY_HOME%\bin
set PATH=c:\Java\jre\bin;%PATH%
set OS=Windows_NT

call build N
java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar celsius_conversion.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar celsius_conversionManifest.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar;celsius_conversion.jar celsius_conversion
rem java -cp C:\groovy\embeddable\groovy-all-2.4.12.jar;. celsius_conversion

rem as a script
rem groovy celsius_conversion
rem groovy celsius_conversion.groovy

pause
