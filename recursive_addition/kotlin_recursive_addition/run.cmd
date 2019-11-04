@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist RecursiveAddition.kt (
    java -jar RecursiveAddition.jar
) else (
    if NOT exist RecursiveAddition.java (
        echo copy recursive_addition.
        copy "..\..\recursive_addition\kotlin_recursive_addition\RecursiveAddition.kt" "RecursiveAddition.kt"
    )
)

pause
