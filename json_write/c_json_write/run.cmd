@echo off

set OS=Windows_NT

call build N
if exist json_write.exe (
    json_write.exe
) else (
    if NOT exist json_write.c (
        echo copy json_write.
        copy "..\..\json_write\c_json_write\json_write.c" "json_write.c"
    )
)

pause
