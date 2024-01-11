$endTime = (Get-Date).AddSeconds(5)

while (Get-Date -lt $endTime) {
    Start-Process notepad.exe -NoNewWindow
    Start-Sleep -Milliseconds 200  # Adjust this delay if needed
}

# Close all Notepad processes
Get-Process -Name notepad | ForEach-Object { $_.CloseMainWindow() | Out-Null; $_.WaitForExit() }
