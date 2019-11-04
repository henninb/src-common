@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist CelsiusConversion.kt (
    java -jar CelsiusConversion.jar
) else (
    if NOT exist CelsiusConversion.java (
        echo copy celsius_conversion.
        copy "..\..\celsius_conversion\kotlin_celsius_conversion\CelsiusConversion.kt" "CelsiusConversion.kt"
    )
)

pause
