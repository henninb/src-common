@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist StreamProcessing.kt (
    java -jar StreamProcessing.jar
) else (
    if NOT exist StreamProcessing.java (
        echo copy stream_processing.
        copy "..\..\stream_processing\kotlin_stream_processing\StreamProcessing.kt" "StreamProcessing.kt"
    )
)

pause
