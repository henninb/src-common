@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist CelsiusConversion.java (
    java -jar CelsiusConversion.jar
) else (
    if NOT exist CelsiusConversion.java (
        echo copy celsius_conversion.
        copy "..\..\celsius_conversion\java_celsius_conversion\CelsiusConversion.java" "CelsiusConversion.java"
    )
)

pause
