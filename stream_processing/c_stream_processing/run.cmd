@echo off

set OS=Windows_NT

call build N
if exist stream_processing.exe (
    stream_processing.exe
) else (
    if NOT exist stream_processing.c (
        echo copy stream_processing.
        copy "..\..\stream_processing\c_stream_processing\stream_processing.c" "stream_processing.c"
    )
)

pause
