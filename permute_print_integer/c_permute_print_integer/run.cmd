@echo off

set OS=Windows_NT

call build N
if exist permute_print_integer.exe (
    permute_print_integer.exe
) else (
    if NOT exist permute_print_integer.c (
        echo copy permute_print_integer.
        copy "..\..\permute_print_integer\c_permute_print_integer\permute_print_integer.c" "permute_print_integer.c"
    )
)

pause
