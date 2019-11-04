@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist FileRead.java (
    java -jar FileRead.jar
) else (
    if NOT exist FileRead.java (
        echo copy file_read.
        copy "..\..\file_read\java_file_read\FileRead.java" "FileRead.java"
    )
)

pause
