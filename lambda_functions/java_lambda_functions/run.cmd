@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist LambdaFunctions.java (
    java -jar LambdaFunctions.jar
) else (
    if NOT exist LambdaFunctions.java (
        echo copy lambda_functions.
        copy "..\..\lambda_functions\java_lambda_functions\LambdaFunctions.java" "LambdaFunctions.java"
    )
)

pause
