@echo off

set OS=Windows_NT

call build N
if exist prime.exe (
    prime.exe
) else (
    if NOT exist prime.c (
        echo copy prime.
        copy "..\..\prime\c_prime\prime.c" "prime.c"
    )
)

pause
