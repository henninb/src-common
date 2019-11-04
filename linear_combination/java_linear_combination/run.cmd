@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist LinearCombination.java (
    java -jar LinearCombination.jar
) else (
    if NOT exist LinearCombination.java (
        echo copy linear_combination.
        copy "..\..\linear_combination\java_linear_combination\LinearCombination.java" "LinearCombination.java"
    )
)

pause
