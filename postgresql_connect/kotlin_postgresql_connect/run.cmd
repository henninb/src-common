@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist PostgresqlConnect.kt (
    java -jar PostgresqlConnect.jar
) else (
    if NOT exist PostgresqlConnect.java (
        echo copy postgresql_connect.
        copy "..\..\postgresql_connect\kotlin_postgresql_connect\PostgresqlConnect.kt" "PostgresqlConnect.kt"
    )
)

pause
