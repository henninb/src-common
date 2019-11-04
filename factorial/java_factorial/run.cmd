@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist Factorial.java (
    java -jar Factorial.jar
) else (
    if NOT exist Factorial.java (
        echo copy factorial.
        copy "..\..\factorial\java_factorial\Factorial.java" "Factorial.java"
    )
)

pause
