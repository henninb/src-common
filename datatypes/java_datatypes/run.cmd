@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist Datatypes.java (
    java -jar Datatypes.jar
) else (
    if NOT exist Datatypes.java (
        echo copy datatypes.
        copy "..\..\datatypes\java_datatypes\Datatypes.java" "Datatypes.java"
    )
)

pause
