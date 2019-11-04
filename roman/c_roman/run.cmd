@echo off

set OS=Windows_NT

call build N
if exist roman.exe (
    roman.exe
) else (
    if NOT exist roman.c (
        echo copy roman.
        copy "..\..\roman\c_roman\roman.c" "roman.c"
    )
)

pause
