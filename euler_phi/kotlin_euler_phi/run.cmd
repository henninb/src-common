@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist EulerPhi.kt (
    java -jar EulerPhi.jar
) else (
    if NOT exist EulerPhi.java (
        echo copy euler_phi.
        copy "..\..\euler_phi\kotlin_euler_phi\EulerPhi.kt" "EulerPhi.kt"
    )
)

pause
