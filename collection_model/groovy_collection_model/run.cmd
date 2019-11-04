@echo off

set PATH=%GROOVY_HOME%\bin
set PATH=c:\Java\jre\bin;%PATH%
set OS=Windows_NT

call build N
java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar collection_model.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar collection_modelManifest.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar;collection_model.jar collection_model
rem java -cp C:\groovy\embeddable\groovy-all-2.4.12.jar;. collection_model

rem as a script
rem groovy collection_model
rem groovy collection_model.groovy

pause
