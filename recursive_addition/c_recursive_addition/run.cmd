@echo off

set OS=Windows_NT

call build N
if exist recursive_addition.exe (
    recursive_addition.exe
) else (
    if NOT exist recursive_addition.c (
        echo copy recursive_addition.
        copy "..\..\recursive_addition\c_recursive_addition\recursive_addition.c" "recursive_addition.c"
    )
)

pause
