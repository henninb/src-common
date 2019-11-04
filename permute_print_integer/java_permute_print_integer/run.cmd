@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist PermutePrintInteger.java (
    java -jar PermutePrintInteger.jar
) else (
    if NOT exist PermutePrintInteger.java (
        echo copy permute_print_integer.
        copy "..\..\permute_print_integer\java_permute_print_integer\PermutePrintInteger.java" "PermutePrintInteger.java"
    )
)

pause
