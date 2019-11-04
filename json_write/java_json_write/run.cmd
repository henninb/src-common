@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist JsonWrite.java (
    java -jar JsonWrite.jar
) else (
    if NOT exist JsonWrite.java (
        echo copy json_write.
        copy "..\..\json_write\java_json_write\JsonWrite.java" "JsonWrite.java"
    )
)

pause
