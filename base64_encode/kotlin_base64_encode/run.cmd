@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist Base64Encode.kt (
    java -jar Base64Encode.jar
) else (
    if NOT exist Base64Encode.java (
        echo copy base64_encode.
        copy "..\..\base64_encode\kotlin_base64_encode\Base64Encode.kt" "Base64Encode.kt"
    )
)

pause
