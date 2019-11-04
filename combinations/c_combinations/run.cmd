@echo off

set OS=Windows_NT

call build N
if exist combinations.exe (
    combinations.exe
) else (
    if NOT exist combinations.c (
        echo copy combinations.
        copy "..\..\combinations\c_combinations\combinations.c" "combinations.c"
    )
)

pause
