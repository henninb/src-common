@echo off

set PATH=%GROOVY_HOME%\bin
set PATH=c:\Java\jre\bin;%PATH%
set OS=Windows_NT

call build N
java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar selection_sort.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar selection_sortManifest.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar;selection_sort.jar selection_sort
rem java -cp C:\groovy\embeddable\groovy-all-2.4.12.jar;. selection_sort

rem as a script
rem groovy selection_sort
rem groovy selection_sort.groovy

pause
