@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist FileWrite.kt (
    java -jar FileWrite.jar
) else (
    if NOT exist FileWrite.java (
        echo copy file_write.
        copy "..\..\file_write\kotlin_file_write\FileWrite.kt" "FileWrite.kt"
    )
)

pause
