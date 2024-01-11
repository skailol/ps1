1..10 | ForEach-Object { Start-Process "cmd.exe" -ArgumentList "/c echo CMD Window $_ && timeout /t 1" -WindowStyle Hidden }
Start-Sleep -Seconds 3
Get-Process -Name "cmd" | ForEach-Object { Stop-Process -Id $_.Id -Force }
