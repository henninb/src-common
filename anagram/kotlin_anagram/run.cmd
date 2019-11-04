@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist Anagram.kt (
    java -jar Anagram.jar
) else (
    if NOT exist Anagram.java (
        echo copy anagram.
        copy "..\..\anagram\kotlin_anagram\Anagram.kt" "Anagram.kt"
    )
)

pause
