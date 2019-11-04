@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist Gcd.kt (
    java -jar Gcd.jar
) else (
    if NOT exist Gcd.java (
        echo copy gcd.
        copy "..\..\gcd\kotlin_gcd\Gcd.kt" "Gcd.kt"
    )
)

pause
