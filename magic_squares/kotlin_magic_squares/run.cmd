@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist MagicSquares.kt (
    java -jar MagicSquares.jar
) else (
    if NOT exist MagicSquares.java (
        echo copy magic_squares.
        copy "..\..\magic_squares\kotlin_magic_squares\MagicSquares.kt" "MagicSquares.kt"
    )
)

pause
