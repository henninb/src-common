@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist Combinations.java (
    java -jar Combinations.jar
) else (
    if NOT exist Combinations.java (
        echo copy combinations.
        copy "..\..\combinations\java_combinations\Combinations.java" "Combinations.java"
    )
)

pause
