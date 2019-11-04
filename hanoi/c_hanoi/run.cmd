@echo off

set OS=Windows_NT

call build N
if exist hanoi.exe (
    hanoi.exe
) else (
    if NOT exist hanoi.c (
        echo copy hanoi.
        copy "..\..\hanoi\c_hanoi\hanoi.c" "hanoi.c"
    )
)

pause
