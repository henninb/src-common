@echo off

set OS=Windows_NT

call build N
if exist exception_handler.exe (
    exception_handler.exe
) else (
    if NOT exist exception_handler.c (
        echo copy exception_handler.
        copy "..\..\exception_handler\c_exception_handler\exception_handler.c" "exception_handler.c"
    )
)

pause
