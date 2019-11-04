@echo off

set OS=Windows_NT

call build N
if exist date_dow.exe (
    date_dow.exe
) else (
    if NOT exist date_dow.c (
        echo copy date_dow.
        copy "..\..\date_dow\c_date_dow\date_dow.c" "date_dow.c"
    )
)

pause
