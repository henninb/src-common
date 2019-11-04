@echo off

rem set PATH=%UserProfile%\AppData\Local\Julia-0.6.0\bin
set PATH=%LocalAppData%\Julia-0.6.0\bin

julia file_write.jl

pause
