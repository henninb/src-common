@echo off

set OS=Windows_NT

call build N
if exist pi_calculate.exe (
    pi_calculate.exe
) else (
    if NOT exist pi_calculate.c (
        echo copy pi_calculate.
        copy "..\..\pi_calculate\c_pi_calculate\pi_calculate.c" "pi_calculate.c"
    )
)

pause
