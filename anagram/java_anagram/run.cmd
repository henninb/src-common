@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist Anagram.java (
    java -jar Anagram.jar
) else (
    if NOT exist Anagram.java (
        echo copy anagram.
        copy "..\..\anagram\java_anagram\Anagram.java" "Anagram.java"
    )
)

pause
