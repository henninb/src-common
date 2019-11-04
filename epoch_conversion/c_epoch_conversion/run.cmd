@echo off

set OS=Windows_NT

call build N
if exist epoch_conversion.exe (
    epoch_conversion.exe
) else (
    if NOT exist epoch_conversion.c (
        echo copy epoch_conversion.
        copy "..\..\epoch_conversion\c_epoch_conversion\epoch_conversion.c" "epoch_conversion.c"
    )
)

pause
