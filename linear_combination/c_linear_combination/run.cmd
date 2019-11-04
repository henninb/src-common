@echo off

set OS=Windows_NT

call build N
if exist linear_combination.exe (
    linear_combination.exe
) else (
    if NOT exist linear_combination.c (
        echo copy linear_combination.
        copy "..\..\linear_combination\c_linear_combination\linear_combination.c" "linear_combination.c"
    )
)

pause
