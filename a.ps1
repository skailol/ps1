# Run Start-Process cmd.exe 10 times quickly
for ($i = 1; $i -le 10; $i++) {
    Start-Process cmd.exe
}

# Wait for 3 seconds
Start-Sleep -Seconds 3

# Close all Command Prompt instances
Get-Process -Name cmd | ForEach-Object { Stop-Process -Id $_.Id -Force }
