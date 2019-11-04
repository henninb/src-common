@echo off

set OS=Windows_NT

call build N
if exist date_utc.exe (
    date_utc.exe
) else (
    if NOT exist date_utc.c (
        echo copy date_utc.
        copy "..\..\date_utc\c_date_utc\date_utc.c" "date_utc.c"
    )
)

pause
