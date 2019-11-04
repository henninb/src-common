@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist PostgresqlConnect.java (
    java -jar PostgresqlConnect.jar
) else (
    if NOT exist PostgresqlConnect.java (
        echo copy postgresql_connect.
        copy "..\..\postgresql_connect\java_postgresql_connect\PostgresqlConnect.java" "PostgresqlConnect.java"
    )
)

pause
