@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist EntryPoint.java (
    java -jar EntryPoint.jar
) else (
    if NOT exist EntryPoint.java (
        echo copy entry_point.
        copy "..\..\entry_point\java_entry_point\EntryPoint.java" "EntryPoint.java"
    )
)

pause
