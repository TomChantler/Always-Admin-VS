REM By Tom Chantler - https://tomssl.com/2015/03/31/always-run-visual-studio-as-administrator-with-no-uac-prompt/
Dim shell,command
command = """%ProgramFiles(x86)%\TomSSL\RunVS2015.bat"""
set shell = CreateObject("WScript.Shell")
shell.Run command, 0