while ($true) {
    # Check for closed Command Prompt instances
    $closedCmd = Get-Process -Name cmd -ErrorAction SilentlyContinue

    # If no Command Prompt found, open a new one
    if (-not $closedCmd) {
        Start-Process cmd.exe
    }

    # Check every second (adjust as needed)
    Start-Sleep -Seconds 1
}
