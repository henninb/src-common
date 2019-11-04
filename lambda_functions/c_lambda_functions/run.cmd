@echo off

set OS=Windows_NT

call build N
if exist lambda_functions.exe (
    lambda_functions.exe
) else (
    if NOT exist lambda_functions.c (
        echo copy lambda_functions.
        copy "..\..\lambda_functions\c_lambda_functions\lambda_functions.c" "lambda_functions.c"
    )
)

pause
