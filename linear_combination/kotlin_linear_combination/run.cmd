@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist LinearCombination.kt (
    java -jar LinearCombination.jar
) else (
    if NOT exist LinearCombination.java (
        echo copy linear_combination.
        copy "..\..\linear_combination\kotlin_linear_combination\LinearCombination.kt" "LinearCombination.kt"
    )
)

pause
