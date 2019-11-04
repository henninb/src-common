@echo off

set OS=Windows_NT

call build N
if exist recursive_for_loop.exe (
    recursive_for_loop.exe
) else (
    if NOT exist recursive_for_loop.c (
        echo copy recursive_for_loop.
        copy "..\..\recursive_for_loop\c_recursive_for_loop\recursive_for_loop.c" "recursive_for_loop.c"
    )
)

pause
