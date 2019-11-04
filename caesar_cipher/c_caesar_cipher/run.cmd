@echo off

set OS=Windows_NT

call build N
if exist caesar_cipher.exe (
    caesar_cipher.exe
) else (
    if NOT exist caesar_cipher.c (
        echo copy caesar_cipher.
        copy "..\..\caesar_cipher\c_caesar_cipher\caesar_cipher.c" "caesar_cipher.c"
    )
)

pause
