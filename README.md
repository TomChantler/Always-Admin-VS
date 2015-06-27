# Always-Admin-VS
Run Visual Studio as an Administrator with no UAC prompt, regardless of how it is called.

**UPDATE 2015-06-27: Added Visual Studio 2015 version in VS2015 folder**

This is specific to Visual Studio 2013 (NEW: VS2015 version in VS2015 folder), although it would be very easy to change it to work with other versions (you just need to change the file path). You could also adapt it for other applications quite easily.

Download all the files and then right-click on `install.bat` and *Run as administrator*. The batch files will be copied somewhere sensible and the xml file will be imported as a Windows Scheduled Task.

After installation you will need to update any existing shortcuts by making them point to `"%ProgramFiles(x86)%\TomSSL\VS2013.bat"`.

You can delete the setup files after installation.

It should work on any Windows 7, 8 or 8.1 machine.

Full instructions here: https://tomssl.com/2015/03/31/always-run-visual-studio-as-administrator-with-no-uac-prompt/
