@echo off

set OS=Windows_NT

call build N
if exist julian_date.exe (
    julian_date.exe
) else (
    if NOT exist julian_date.c (
        echo copy julian_date.
        copy "..\..\julian_date\c_julian_date\julian_date.c" "julian_date.c"
    )
)

pause
