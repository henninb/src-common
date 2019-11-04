@echo off

set OS=Windows_NT

call build N
if exist euler_phi.exe (
    euler_phi.exe
) else (
    if NOT exist euler_phi.c (
        echo copy euler_phi.
        copy "..\..\euler_phi\c_euler_phi\euler_phi.c" "euler_phi.c"
    )
)

pause
