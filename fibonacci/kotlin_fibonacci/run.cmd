@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist Fibonacci.kt (
    java -jar Fibonacci.jar
) else (
    if NOT exist Fibonacci.java (
        echo copy fibonacci.
        copy "..\..\fibonacci\kotlin_fibonacci\Fibonacci.kt" "Fibonacci.kt"
    )
)

pause
