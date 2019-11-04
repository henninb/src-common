@echo off

set OS=Windows_NT

call build N
if exist easter_calculator.exe (
    easter_calculator.exe
) else (
    if NOT exist easter_calculator.c (
        echo copy easter_calculator.
        copy "..\..\easter_calculator\c_easter_calculator\easter_calculator.c" "easter_calculator.c"
    )
)

pause
