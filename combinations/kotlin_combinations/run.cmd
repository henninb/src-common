@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist Combinations.kt (
    java -jar Combinations.jar
) else (
    if NOT exist Combinations.java (
        echo copy combinations.
        copy "..\..\combinations\kotlin_combinations\Combinations.kt" "Combinations.kt"
    )
)

pause
