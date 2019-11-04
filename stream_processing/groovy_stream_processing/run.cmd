@echo off

set PATH=%GROOVY_HOME%\bin
set PATH=c:\Java\jre\bin;%PATH%
set OS=Windows_NT

call build N
java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar stream_processing.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar stream_processingManifest.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar;stream_processing.jar stream_processing
rem java -cp C:\groovy\embeddable\groovy-all-2.4.12.jar;. stream_processing

rem as a script
rem groovy stream_processing
rem groovy stream_processing.groovy

pause
