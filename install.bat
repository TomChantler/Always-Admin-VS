REM By Tom Chantler - https://tomssl.com/2015/03/31/always-run-visual-studio-as-administrator-with-no-uac-prompt/
mkdir "%ProgramFiles(x86)%\TomSSL"
mkdir "%ProgramData%\TomSSL"
cd /d %~dp0
copy RunVS.bat "%ProgramFiles(x86)%\TomSSL"
copy RunVS.vbs "%ProgramFiles(x86)%\TomSSL"
copy VS2013.bat "%ProgramFiles(x86)%\TomSSL"
copy VS2013.vbs "%ProgramFiles(x86)%\TomSSL"
schtasks /create /XML "RunVisualStudioAsAdminNoUACPrompt.xml" /TN "Run Visual Studio As Admin - no UAC Prompt"
ftype VisualStudio.Launcher.sln="%SystemRoot%\System32\WScript.exe" "%ProgramFiles(x86)%\TomSSL\VS2013.vbs" "%%1" %%*
ftype VisualStudio.sln.12.0="%SystemRoot%\System32\WScript.exe" "%ProgramFiles(x86)%\TomSSL\VS2013.vbs" "%%1" %%*
pause