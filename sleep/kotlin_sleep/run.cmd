@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist Sleep.kt (
    java -jar Sleep.jar
) else (
    if NOT exist Sleep.java (
        echo copy sleep.
        copy "..\..\sleep\kotlin_sleep\Sleep.kt" "Sleep.kt"
    )
)

pause
