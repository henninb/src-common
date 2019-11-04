@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist Sleep.java (
    java -jar Sleep.jar
) else (
    if NOT exist Sleep.java (
        echo copy sleep.
        copy "..\..\sleep\java_sleep\Sleep.java" "Sleep.java"
    )
)

pause
