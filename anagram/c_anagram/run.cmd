@echo off

set OS=Windows_NT

call build N
if exist anagram.exe (
    anagram.exe
) else (
    if NOT exist anagram.c (
        echo copy anagram.
        copy "..\..\anagram\c_anagram\anagram.c" "anagram.c"
    )
)

pause
