@echo off

set OS=Windows_NT

call build N
if exist sleep.exe (
    sleep.exe
) else (
    if NOT exist sleep.c (
        echo copy sleep.
        copy "..\..\sleep\c_sleep\sleep.c" "sleep.c"
    )
)

pause
