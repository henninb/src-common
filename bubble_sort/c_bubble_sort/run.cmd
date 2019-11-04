@echo off

set OS=Windows_NT

call build N
if exist bubble_sort.exe (
    bubble_sort.exe
) else (
    if NOT exist bubble_sort.c (
        echo copy bubble_sort.
        copy "..\..\bubble_sort\c_bubble_sort\bubble_sort.c" "bubble_sort.c"
    )
)

pause
