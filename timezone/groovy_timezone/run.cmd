@echo off

set PATH=%GROOVY_HOME%\bin
set PATH=c:\Java\jre\bin;%PATH%
set OS=Windows_NT

call build N
java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar timezone.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar timezoneManifest.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar;timezone.jar timezone
rem java -cp C:\groovy\embeddable\groovy-all-2.4.12.jar;. timezone

rem as a script
rem groovy timezone
rem groovy timezone.groovy

pause
