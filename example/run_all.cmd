@echo off

rem for /r %%f in (*) do echo %%f
set PWD=%cd%

for /D %%d in (*) do (
  cd %%d
  echo %%d
  call run
  cd %PWD%
)

pause