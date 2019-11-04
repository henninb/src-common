@echo off

set OS=Windows_NT

call build N
if exist hostname_info.exe (
    hostname_info.exe
) else (
    if NOT exist hostname_info.c (
        echo copy hostname_info.
        copy "..\..\hostname_info\c_hostname_info\hostname_info.c" "hostname_info.c"
    )
)

pause
