@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist Quadratic.kt (
    java -jar Quadratic.jar
) else (
    if NOT exist Quadratic.java (
        echo copy quadratic.
        copy "..\..\quadratic\kotlin_quadratic\Quadratic.kt" "Quadratic.kt"
    )
)

pause
