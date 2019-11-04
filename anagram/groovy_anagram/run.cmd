@echo off

set PATH=%GROOVY_HOME%\bin
set PATH=c:\Java\jre\bin;%PATH%
set OS=Windows_NT

call build N
java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar anagram.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar anagramManifest.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar;anagram.jar anagram
rem java -cp C:\groovy\embeddable\groovy-all-2.4.12.jar;. anagram

rem as a script
rem groovy anagram
rem groovy anagram.groovy

pause
