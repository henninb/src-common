@echo off

set OS=Windows_NT

call build N
if exist base64_encode.exe (
    base64_encode.exe
) else (
    if NOT exist base64_encode.c (
        echo copy base64_encode.
        copy "..\..\base64_encode\c_base64_encode\base64_encode.c" "base64_encode.c"
    )
)

pause
