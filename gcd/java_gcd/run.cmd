@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist Gcd.java (
    java -jar Gcd.jar
) else (
    if NOT exist Gcd.java (
        echo copy gcd.
        copy "..\..\gcd\java_gcd\Gcd.java" "Gcd.java"
    )
)

pause
