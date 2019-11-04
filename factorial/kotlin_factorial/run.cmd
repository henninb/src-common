@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist Factorial.kt (
    java -jar Factorial.jar
) else (
    if NOT exist Factorial.java (
        echo copy factorial.
        copy "..\..\factorial\kotlin_factorial\Factorial.kt" "Factorial.kt"
    )
)

pause
