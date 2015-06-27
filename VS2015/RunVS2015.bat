REM By Tom Chantler - https://tomssl.com/2015/03/31/always-run-visual-studio-as-administrator-with-no-uac-prompt/
echo off
set /p _VSFileToOpen=<"%ProgramData%\TomSSL\VS2015FileToOpen.txt"
CALL :dequote _VSFileToOpen
if "%_VSFileToOpen%" == "NONE" goto noparams
goto params
:noparams
start /b "" "%ProgramFiles(x86)%\Microsoft Visual Studio 14.0\Common7\IDE\devenv.exe"
Goto :eof
:params
start /b "" "%ProgramFiles(x86)%\Microsoft Visual Studio 14.0\Common7\IDE\devenv.exe" "%_VSFileToOpen%"
Goto :eof
:DeQuote
for /f "delims=" %%A in ('echo %%%1%%') do set %1=%%~A
Goto :eof