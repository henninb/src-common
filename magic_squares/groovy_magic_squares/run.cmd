@echo off

set PATH=%GROOVY_HOME%\bin
set PATH=c:\Java\jre\bin;%PATH%
set OS=Windows_NT

call build N
java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar magic_squares.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar magic_squaresManifest.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar;magic_squares.jar magic_squares
rem java -cp C:\groovy\embeddable\groovy-all-2.4.12.jar;. magic_squares

rem as a script
rem groovy magic_squares
rem groovy magic_squares.groovy

pause
