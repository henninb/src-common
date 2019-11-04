@echo off

set OS=Windows_NT

call build N
if exist luhn.exe (
    luhn.exe
) else (
    if NOT exist luhn.c (
        echo copy luhn.
        copy "..\..\luhn\c_luhn\luhn.c" "luhn.c"
    )
)

pause
