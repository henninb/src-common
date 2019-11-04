@echo off

set OS=Windows_NT

call build N
if exist sierpinski_triangle.exe (
    sierpinski_triangle.exe
) else (
    if NOT exist sierpinski_triangle.c (
        echo copy sierpinski_triangle.
        copy "..\..\sierpinski_triangle\c_sierpinski_triangle\sierpinski_triangle.c" "sierpinski_triangle.c"
    )
)

pause
