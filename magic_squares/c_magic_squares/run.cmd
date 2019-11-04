@echo off

set OS=Windows_NT

call build N
if exist magic_squares.exe (
    magic_squares.exe
) else (
    if NOT exist magic_squares.c (
        echo copy magic_squares.
        copy "..\..\magic_squares\c_magic_squares\magic_squares.c" "magic_squares.c"
    )
)

pause
