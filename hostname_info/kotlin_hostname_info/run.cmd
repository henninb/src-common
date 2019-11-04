@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist HostnameInfo.kt (
    java -jar HostnameInfo.jar
) else (
    if NOT exist HostnameInfo.java (
        echo copy hostname_info.
        copy "..\..\hostname_info\kotlin_hostname_info\HostnameInfo.kt" "HostnameInfo.kt"
    )
)

pause
