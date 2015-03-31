REM By Tom Chantler - https://tomssl.com
mkdir "%ProgramFiles(x86)%\TomSSL"
mkdir "%ProgramData%\TomSSL"
cd %~dp0
copy RunVS.bat "%ProgramFiles(x86)%\TomSSL"
copy VS2013.bat "%ProgramFiles(x86)%\TomSSL"
schtasks /create /XML "RunVisualStudioAsAdminNoUACPrompt.xml" /TN "Run Visual Studio As Admin - no UAC Prompt"
ftype VisualStudio.Launcher.sln="%ProgramFiles(x86)%\TomSSL\VS2013.bat" "%%1"
ftype VisualStudio.sln.12.0="%ProgramFiles(x86)%\TomSSL\VS2013.bat" "%%1"
pause