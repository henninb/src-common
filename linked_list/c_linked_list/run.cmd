@echo off

set OS=Windows_NT

call build N
if exist linked_list.exe (
    linked_list.exe
) else (
    if NOT exist linked_list.c (
        echo copy linked_list.
        copy "..\..\linked_list\c_linked_list\linked_list.c" "linked_list.c"
    )
)

pause
