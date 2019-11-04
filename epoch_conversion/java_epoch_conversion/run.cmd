@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist EpochConversion.java (
    java -jar EpochConversion.jar
) else (
    if NOT exist EpochConversion.java (
        echo copy epoch_conversion.
        copy "..\..\epoch_conversion\java_epoch_conversion\EpochConversion.java" "EpochConversion.java"
    )
)

pause
