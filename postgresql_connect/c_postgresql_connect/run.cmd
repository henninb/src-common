@echo off

set OS=Windows_NT

call build N
if exist postgresql_connect.exe (
    postgresql_connect.exe
) else (
    if NOT exist postgresql_connect.c (
        echo copy postgresql_connect.
        copy "..\..\postgresql_connect\c_postgresql_connect\postgresql_connect.c" "postgresql_connect.c"
    )
)

pause
