@echo off

set OS=Windows_NT

call build N
if exist entry_point.exe (
    entry_point.exe
) else (
    if NOT exist entry_point.c (
        echo copy entry_point.
        copy "..\..\entry_point\c_entry_point\entry_point.c" "entry_point.c"
    )
)

pause
