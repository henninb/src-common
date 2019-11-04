@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist Luhn.java (
    java -jar Luhn.jar
) else (
    if NOT exist Luhn.java (
        echo copy luhn.
        copy "..\..\luhn\java_luhn\Luhn.java" "Luhn.java"
    )
)

pause
