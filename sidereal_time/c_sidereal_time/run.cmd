@echo off

set OS=Windows_NT

call build N
if exist sidereal_time.exe (
    sidereal_time.exe
) else (
    if NOT exist sidereal_time.c (
        echo copy sidereal_time.
        copy "..\..\sidereal_time\c_sidereal_time\sidereal_time.c" "sidereal_time.c"
    )
)

pause
