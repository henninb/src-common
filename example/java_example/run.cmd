@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist Example.java (
    java -jar Example.jar
) else (
    if NOT exist Example.java (
        echo copy example.
        copy "..\..\example\java_example\Example.java" "Example.java"
    )
)

pause
