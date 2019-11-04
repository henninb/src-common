@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist Nqueens.kt (
    java -jar Nqueens.jar
) else (
    if NOT exist Nqueens.java (
        echo copy nqueens.
        copy "..\..\nqueens\kotlin_nqueens\Nqueens.kt" "Nqueens.kt"
    )
)

pause
