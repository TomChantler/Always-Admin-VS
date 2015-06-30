REM By Tom Chantler - https://tomssl.com/2015/03/31/always-run-visual-studio-as-administrator-with-no-uac-prompt/
mkdir "%ProgramFiles(x86)%\TomSSL"
mkdir "%ProgramData%\TomSSL"
cd /d %~dp0
copy RunVS2015.bat "%ProgramFiles(x86)%\TomSSL"
copy RunVS2015.vbs "%ProgramFiles(x86)%\TomSSL"
copy VS2015.bat "%ProgramFiles(x86)%\TomSSL"
copy VS2015.vbs "%ProgramFiles(x86)%\TomSSL"
schtasks /create /XML "RunVisualStudio2015AsAdminNoUACPrompt.xml" /TN "Run Visual Studio 2015 As Admin - no UAC Prompt"
ftype VisualStudio.Launcher.sln="%SystemRoot%\System32\WScript.exe" "%ProgramFiles(x86)%\TomSSL\VS2015.vbs" "%%1" %%*
ftype VisualStudio.sln.14.0="%SystemRoot%\System32\WScript.exe" "%ProgramFiles(x86)%\TomSSL\VS2015.vbs" "%%1" %%*
pause