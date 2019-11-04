@echo off

set OS=Windows_NT

call build N
if exist factors.exe (
    factors.exe
) else (
    if NOT exist factors.c (
        echo copy factors.
        copy "..\..\factors\c_factors\factors.c" "factors.c"
    )
)

pause
