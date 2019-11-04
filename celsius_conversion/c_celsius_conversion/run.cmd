@echo off

set OS=Windows_NT

call build N
if exist celsius_conversion.exe (
    celsius_conversion.exe
) else (
    if NOT exist celsius_conversion.c (
        echo copy celsius_conversion.
        copy "..\..\celsius_conversion\c_celsius_conversion\celsius_conversion.c" "celsius_conversion.c"
    )
)

pause
