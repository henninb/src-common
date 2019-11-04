@echo off

set PATH=%GROOVY_HOME%\bin
set PATH=c:\Java\jre\bin;%PATH%
set OS=Windows_NT

call build N
java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar sierpinski_triangle.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar sierpinski_triangleManifest.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar;sierpinski_triangle.jar sierpinski_triangle
rem java -cp C:\groovy\embeddable\groovy-all-2.4.12.jar;. sierpinski_triangle

rem as a script
rem groovy sierpinski_triangle
rem groovy sierpinski_triangle.groovy

pause
