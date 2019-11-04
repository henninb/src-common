@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist Nqueens.java (
    java -jar Nqueens.jar
) else (
    if NOT exist Nqueens.java (
        echo copy nqueens.
        copy "..\..\nqueens\java_nqueens\Nqueens.java" "Nqueens.java"
    )
)

pause
