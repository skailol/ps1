# Open 10 Command Prompt windows
for ($i = 1; $i -le 10; $i++) {
    Start-Process "cmd.exe" -ArgumentList "/k echo This is Command Prompt window $i"
}
