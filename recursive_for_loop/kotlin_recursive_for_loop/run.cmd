@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist RecursiveForLoop.kt (
    java -jar RecursiveForLoop.jar
) else (
    if NOT exist RecursiveForLoop.java (
        echo copy recursive_for_loop.
        copy "..\..\recursive_for_loop\kotlin_recursive_for_loop\RecursiveForLoop.kt" "RecursiveForLoop.kt"
    )
)

pause
