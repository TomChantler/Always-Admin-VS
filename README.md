# Always-Admin-VS
Run Visual Studio as an Administrator with no UAC prompt, regardless of how it is called.

This is specific to Visual Studio 2013, although it would be very easy to change it to work with other versions (you just need to change the file path).

Download all the files and then right-click on `install.bat` and *Run as administrator*. The batch files will be copied somewhere sensible and the xml file will be imported as a Windows Scheduled Task.

You can delete the setup files after installation.

It should work on any Windows 7, 8 or 8.1 machine.

Full instructions here: https://tomssl.com/2015/03/31/always-run-visual-studio-as-administrator-with-no-uac-prompt/