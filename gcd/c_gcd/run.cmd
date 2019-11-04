@echo off

set OS=Windows_NT

call build N
if exist gcd.exe (
    gcd.exe
) else (
    if NOT exist gcd.c (
        echo copy gcd.
        copy "..\..\gcd\c_gcd\gcd.c" "gcd.c"
    )
)

pause
