@echo off

set OS=Windows_NT

call build N
if exist file_read.exe (
    file_read.exe
) else (
    if NOT exist file_read.c (
        echo copy file_read.
        copy "..\..\file_read\c_file_read\file_read.c" "file_read.c"
    )
)

pause
