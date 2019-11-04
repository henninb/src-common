@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist CaesarCipher.java (
    java -jar CaesarCipher.jar
) else (
    if NOT exist CaesarCipher.java (
        echo copy caesar_cipher.
        copy "..\..\caesar_cipher\java_caesar_cipher\CaesarCipher.java" "CaesarCipher.java"
    )
)

pause
