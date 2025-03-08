 Write-Host "EFETUANDO LIMPEZA DE CACHE DO WINDOWS UPDATE..." -ForegroundColor White -BackgroundColor DarkGreen
 net stop wuauserv | Out-Null
 cmd /c "del /s /f /q C:\Windows\SoftwareDistribution\*.*" 