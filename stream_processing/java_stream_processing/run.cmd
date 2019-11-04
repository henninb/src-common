@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist StreamProcessing.java (
    java -jar StreamProcessing.jar
) else (
    if NOT exist StreamProcessing.java (
        echo copy stream_processing.
        copy "..\..\stream_processing\java_stream_processing\StreamProcessing.java" "StreamProcessing.java"
    )
)

pause
