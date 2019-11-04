@echo off

set PATH=%GROOVY_HOME%\bin
set PATH=c:\Java\jre\bin;%PATH%
set OS=Windows_NT

call build N
java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar permute_print_integer.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar permute_print_integerManifest.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar;permute_print_integer.jar permute_print_integer
rem java -cp C:\groovy\embeddable\groovy-all-2.4.12.jar;. permute_print_integer

rem as a script
rem groovy permute_print_integer
rem groovy permute_print_integer.groovy

pause
