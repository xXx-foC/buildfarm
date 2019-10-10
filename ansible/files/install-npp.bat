if not exist "C:\Windows\Temp\npp.7.7.1.Installer.x64.exe" (
	powershell -Command "(New-Object System.Net.WebClient).DownloadFile('http://controller01.acme.epic/npp/npp.7.7.1.Installer.exe', 'C:\Windows\Temp\npp.7.7.1.Installer.x64.exe')" <NUL
)
c:\windows\temp\npp.7.7.1.Installer.x64.exe /S
