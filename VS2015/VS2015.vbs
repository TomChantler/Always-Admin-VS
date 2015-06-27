REM By Tom Chantler - https://tomssl.com/2015/03/31/always-run-visual-studio-as-administrator-with-no-uac-prompt/
Dim shell,command
if WScript.Arguments.Count > 0 then
command = """%ProgramFiles(x86)%\TomSSL\VS2015.bat"" """ & WScript.Arguments.Item(0) & """"
else
command = """%ProgramFiles(x86)%\TomSSL\VS2015.bat"""
end if
set shell = CreateObject("WScript.Shell")
shell.Run command, 0