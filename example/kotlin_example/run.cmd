@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist Example.kt (
    java -jar Example.jar
) else (
    if NOT exist Example.java (
        echo copy example.
        copy "..\..\example\kotlin_example\Example.kt" "Example.kt"
    )
)

pause
