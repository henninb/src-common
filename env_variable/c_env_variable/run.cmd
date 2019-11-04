@echo off

set OS=Windows_NT

call build N
if exist env_variable.exe (
    env_variable.exe
) else (
    if NOT exist env_variable.c (
        echo copy env_variable.
        copy "..\..\env_variable\c_env_variable\env_variable.c" "env_variable.c"
    )
)

pause
