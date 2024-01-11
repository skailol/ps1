$url = "https://media3.giphy.com/media/unQ3IJU2RG7DO/giphy.gif?cid=ecf05e47javwa978ux022rutbvmkr6z64bc7r52bw3skxzwm&ep=v1_gifs_search&rid=giphy.gif&ct=g"
$tempFolderPath = $env:TEMP
$outputPath = Join-Path $tempFolderPath "downloaded.gif"

Invoke-WebRequest -Uri $url -OutFile $outputPath

Write-Host "GIF downloaded to: $outputPath"

# Run the downloaded GIF using the default associated program
Start-Process $outputPath
