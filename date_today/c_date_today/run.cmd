@echo off

set OS=Windows_NT

call build N
if exist date_today.exe (
    date_today.exe
) else (
    if NOT exist date_today.c (
        echo copy date_today.
        copy "..\..\date_today\c_date_today\date_today.c" "date_today.c"
    )
)

pause
