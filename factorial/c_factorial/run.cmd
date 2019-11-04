@echo off

set OS=Windows_NT

call build N
if exist factorial.exe (
    factorial.exe
) else (
    if NOT exist factorial.c (
        echo copy factorial.
        copy "..\..\factorial\c_factorial\factorial.c" "factorial.c"
    )
)

pause
