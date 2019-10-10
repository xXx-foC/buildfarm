if "%PACKER_BUILDER_TYPE:~0,6%"=="hyperv" (
  echo "Skip compact steps in Hyper-V build."
  goto :eof
)
if not exist "C:\Windows\Temp\7z1900-x64.msi" (
	powershell -Command "(New-Object System.Net.WebClient).DownloadFile('https://www.7-zip.org/a/7z1900-x64.msi', 'C:\Windows\Temp\7z1900-x64.msi')" <NUL
)
msiexec /qb /i C:\Windows\Temp\7z1900-x64.msi

if not exist "C:\Windows\Temp\npp.7.7.1.Installer.x64.exe" (
	powershell -Command "(New-Object System.Net.WebClient).DownloadFile('http://download.notepad-plus-plus.org/repository/7.x/7.7.1/npp.7.7.1.Installer.x64.exe', 'C:\Windows\Temp\npp.7.7.1.Installer.x64.exe')" <NUL
)
c:\windows\temp\npp.7.7.1.Installer.x64.exe /S
