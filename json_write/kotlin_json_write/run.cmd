@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist JsonWrite.kt (
    java -jar JsonWrite.jar
) else (
    if NOT exist JsonWrite.java (
        echo copy json_write.
        copy "..\..\json_write\kotlin_json_write\JsonWrite.kt" "JsonWrite.kt"
    )
)

pause
