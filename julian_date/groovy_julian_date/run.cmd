@echo off

set PATH=%GROOVY_HOME%\bin
set PATH=c:\Java\jre\bin;%PATH%
set OS=Windows_NT

call build N
java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar julian_date.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar julian_dateManifest.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar;julian_date.jar julian_date
rem java -cp C:\groovy\embeddable\groovy-all-2.4.12.jar;. julian_date

rem as a script
rem groovy julian_date
rem groovy julian_date.groovy

pause
