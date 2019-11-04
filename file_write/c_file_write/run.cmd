@echo off

set OS=Windows_NT

call build N
if exist file_write.exe (
    file_write.exe
) else (
    if NOT exist file_write.c (
        echo copy file_write.
        copy "..\..\file_write\c_file_write\file_write.c" "file_write.c"
    )
)

pause
