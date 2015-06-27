REM By Tom Chantler - https://tomssl.com/2015/03/31/always-run-visual-studio-as-administrator-with-no-uac-prompt/
@echo off
Set _FileToOpen="%~1"
CALL :dequote _FileToOpen
if "%_FileToOpen%" == "" goto noparams
goto params
:noparams
ECHO NONE>"%ProgramData%\TomSSL\VS2015FileToOpen.txt"
C:\Windows\System32\schtasks.exe /Run /TN "Run Visual Studio 2015 As Admin - no UAC Prompt"
Goto :eof
:params
ECHO %_FileToOpen%>"%ProgramData%\TomSSL\VS2015FileToOpen.txt"
C:\Windows\System32\schtasks.exe /Run /TN "Run Visual Studio 2015 As Admin - no UAC Prompt"
Goto :eof
:DeQuote
for /f "delims=" %%A in ('echo %%%1%%') do set %1=%%~A
Goto :eof