@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist MagicSquares.java (
    java -jar MagicSquares.jar
) else (
    if NOT exist MagicSquares.java (
        echo copy magic_squares.
        copy "..\..\magic_squares\java_magic_squares\MagicSquares.java" "MagicSquares.java"
    )
)

pause
