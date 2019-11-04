@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist Luhn.kt (
    java -jar Luhn.jar
) else (
    if NOT exist Luhn.java (
        echo copy luhn.
        copy "..\..\luhn\kotlin_luhn\Luhn.kt" "Luhn.kt"
    )
)

pause
