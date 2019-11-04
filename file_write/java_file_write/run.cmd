@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist FileWrite.java (
    java -jar FileWrite.jar
) else (
    if NOT exist FileWrite.java (
        echo copy file_write.
        copy "..\..\file_write\java_file_write\FileWrite.java" "FileWrite.java"
    )
)

pause
