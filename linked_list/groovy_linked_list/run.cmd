@echo off

set PATH=%GROOVY_HOME%\bin
set PATH=c:\Java\jre\bin;%PATH%
set OS=Windows_NT

call build N
java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar linked_list.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar linked_listManifest.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar;linked_list.jar linked_list
rem java -cp C:\groovy\embeddable\groovy-all-2.4.12.jar;. linked_list

rem as a script
rem groovy linked_list
rem groovy linked_list.groovy

pause
