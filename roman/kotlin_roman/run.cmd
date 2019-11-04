@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist Roman.kt (
    java -jar Roman.jar
) else (
    if NOT exist Roman.java (
        echo copy roman.
        copy "..\..\roman\kotlin_roman\Roman.kt" "Roman.kt"
    )
)

pause
