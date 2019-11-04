@echo off

set OS=Windows_NT

call build N
if exist timezone.exe (
    timezone.exe
) else (
    if NOT exist timezone.c (
        echo copy timezone.
        copy "..\..\timezone\c_timezone\timezone.c" "timezone.c"
    )
)

pause
