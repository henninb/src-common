@echo off

set OS=Windows_NT

call build N
if exist fibonacci.exe (
    fibonacci.exe
) else (
    if NOT exist fibonacci.c (
        echo copy fibonacci.
        copy "..\..\fibonacci\c_fibonacci\fibonacci.c" "fibonacci.c"
    )
)

pause
