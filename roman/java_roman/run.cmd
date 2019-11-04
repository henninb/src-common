@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist Roman.java (
    java -jar Roman.jar
) else (
    if NOT exist Roman.java (
        echo copy roman.
        copy "..\..\roman\java_roman\Roman.java" "Roman.java"
    )
)

pause
