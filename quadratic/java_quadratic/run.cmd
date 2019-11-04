@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist Quadratic.java (
    java -jar Quadratic.jar
) else (
    if NOT exist Quadratic.java (
        echo copy quadratic.
        copy "..\..\quadratic\java_quadratic\Quadratic.java" "Quadratic.java"
    )
)

pause
