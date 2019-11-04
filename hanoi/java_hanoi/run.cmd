@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist Hanoi.java (
    java -jar Hanoi.jar
) else (
    if NOT exist Hanoi.java (
        echo copy hanoi.
        copy "..\..\hanoi\java_hanoi\Hanoi.java" "Hanoi.java"
    )
)

pause
