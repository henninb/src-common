@echo off

set PATH=%GROOVY_HOME%\bin
set PATH=c:\Java\jre\bin;%PATH%
set OS=Windows_NT

call build N
java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar bubble_sort.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar bubble_sortManifest.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar;bubble_sort.jar bubble_sort
rem java -cp C:\groovy\embeddable\groovy-all-2.4.12.jar;. bubble_sort

rem as a script
rem groovy bubble_sort
rem groovy bubble_sort.groovy

pause
