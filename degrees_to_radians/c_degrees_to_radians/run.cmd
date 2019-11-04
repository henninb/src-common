@echo off

set OS=Windows_NT

call build N
if exist degrees_to_radians.exe (
    degrees_to_radians.exe
) else (
    if NOT exist degrees_to_radians.c (
        echo copy degrees_to_radians.
        copy "..\..\degrees_to_radians\c_degrees_to_radians\degrees_to_radians.c" "degrees_to_radians.c"
    )
)

pause
