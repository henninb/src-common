@echo off

set OS=Windows_NT

call build N
if exist selection_sort.exe (
    selection_sort.exe
) else (
    if NOT exist selection_sort.c (
        echo copy selection_sort.
        copy "..\..\selection_sort\c_selection_sort\selection_sort.c" "selection_sort.c"
    )
)

pause
