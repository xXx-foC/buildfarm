if not exist "C:\Windows\Temp\vscommunity.exe" (
	powershell -Command "(New-Object System.Net.WebClient).DownloadFile('https://visualstudio.microsoft.com/thank-you-downloading-visual-studio/?sku=Community&rel=16', 'C:\Windows\Temp\vscommunity.exe')" <NUL
)
c:\Windows\Temp\vscommunity.exe --all --quiet --passive

