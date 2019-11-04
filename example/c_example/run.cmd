@echo off

set OS=Windows_NT

call build N
if exist example.exe (
    example.exe
) else (
    if NOT exist example.c (
        echo copy example.
        copy "..\..\example\c_example\example.c" "example.c"
    )
)

pause
