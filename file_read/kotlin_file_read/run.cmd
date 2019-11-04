@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist FileRead.kt (
    java -jar FileRead.jar
) else (
    if NOT exist FileRead.java (
        echo copy file_read.
        copy "..\..\file_read\kotlin_file_read\FileRead.kt" "FileRead.kt"
    )
)

pause
