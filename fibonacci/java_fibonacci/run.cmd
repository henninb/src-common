@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist Fibonacci.java (
    java -jar Fibonacci.jar
) else (
    if NOT exist Fibonacci.java (
        echo copy fibonacci.
        copy "..\..\fibonacci\java_fibonacci\Fibonacci.java" "Fibonacci.java"
    )
)

pause
