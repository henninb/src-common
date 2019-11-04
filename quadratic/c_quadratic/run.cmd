@echo off

set OS=Windows_NT

call build N
if exist quadratic.exe (
    quadratic.exe
) else (
    if NOT exist quadratic.c (
        echo copy quadratic.
        copy "..\..\quadratic\c_quadratic\quadratic.c" "quadratic.c"
    )
)

pause
