@echo off

set OS=Windows_NT

call build N
if exist random_number.exe (
    random_number.exe
) else (
    if NOT exist random_number.c (
        echo copy random_number.
        copy "..\..\random_number\c_random_number\random_number.c" "random_number.c"
    )
)

pause
