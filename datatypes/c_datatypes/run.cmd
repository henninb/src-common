@echo off

set OS=Windows_NT

call build N
if exist datatypes.exe (
    datatypes.exe
) else (
    if NOT exist datatypes.c (
        echo copy datatypes.
        copy "..\..\datatypes\c_datatypes\datatypes.c" "datatypes.c"
    )
)

pause
