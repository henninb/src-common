@echo off

set OS=Windows_NT

call build N
if exist leap_year.exe (
    leap_year.exe
) else (
    if NOT exist leap_year.c (
        echo copy leap_year.
        copy "..\..\leap_year\c_leap_year\leap_year.c" "leap_year.c"
    )
)

pause
