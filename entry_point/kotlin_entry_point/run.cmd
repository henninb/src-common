@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist EntryPoint.kt (
    java -jar EntryPoint.jar
) else (
    if NOT exist EntryPoint.java (
        echo copy entry_point.
        copy "..\..\entry_point\kotlin_entry_point\EntryPoint.kt" "EntryPoint.kt"
    )
)

pause
