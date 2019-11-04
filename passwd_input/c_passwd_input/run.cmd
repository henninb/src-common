@echo off

set OS=Windows_NT

call build N
if exist passwd_input.exe (
    passwd_input.exe
) else (
    if NOT exist passwd_input.c (
        echo copy passwd_input.
        copy "..\..\passwd_input\c_passwd_input\passwd_input.c" "passwd_input.c"
    )
)

pause
