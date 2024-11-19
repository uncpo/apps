chcp 1252 | Out-Null
New-Item -Path C:\Setup -ItemType directory | Out-Null
cls
Write-Host ""
Write-Host ""
Write-Host ""
Write-Host ""
Write-Host ""
Write-Host ""
Write-Host "PREPARANDO REQUISITOS..." -ForegroundColor White -BackgroundColor DarkGreen
Write-Host ""
Write-Host ""
Write-Host ""

Start-Process "pwsh.exe" -Wait -WindowStyle Maximized -ArgumentList '-command irm https://github.com/asheroto/winget-install/releases/download/5.0.4/winget-install.ps1 | iex'
powershell.exe -NoProfile -Command "irm asheroto.com/winget | iex"
winget upgrade -r --accept-source-agreements --accept-package-agreements
$OfficeExec = "https://officecdn.microsoft.com/pr/wsus/setup.exe"
Invoke-WebRequest -Uri $OfficeExec -OutFile "C:\Office\setup.exe"
$OfficeConfigXML = "https://github.com/uncpo/apps/releases/download/Apps/Office2024.xml"
Invoke-WebRequest -Uri $OfficeConfigXML -OutFile "C:\Office\Office2024.xml"

Write-Host "INSTALANDO WINRAR" -ForegroundColor White -BackgroundColor DarkGreen
winget install Winrar

Write-Host "INSTALANDO 7-ZIP..." -ForegroundColor White -BackgroundColor DarkGreen
winget install 7-zip

Write-Host "INSTALANDO GOOGLE CHROME..." -ForegroundColor White -BackgroundColor DarkGreen
winget install Google.Chrome

Write-Host "INSTALANDO MOZILLA FIREFOX..." -ForegroundColor White -BackgroundColor DarkGreen
winget install Mozilla.Firefox

Write-Host "INSTALANDO LIGHTSHOT..." -ForegroundColor White -BackgroundColor DarkGreen
winget install LightShot

Write-Host "INSTALANDO NAPS2..." -ForegroundColor White -BackgroundColor DarkGreen
winget install Cyanfish.NAPS2

Write-Host "INSTALANDO NOTEPAD++..." -ForegroundColor White -BackgroundColor DarkGreen
winget install Notepad++.Notepad++

Write-Host "INSTALANDO PDF-XCHANGE EDITOR..." -ForegroundColor White -BackgroundColor DarkGreen
winget install TrackerSoftware.PDF-XChangeEditor

Write-Host "INSTALANDO IOBIT ADVANCED SYSTEM CARE..." -ForegroundColor White -BackgroundColor DarkGreen
winget install IObit.AdvancedSystemCare

Write-Host "INSTALANDO IOBIT SMART DEFRAG..." -ForegroundColor White -BackgroundColor DarkGreen
winget install IObit.SmartDefrag

Write-Host "INSTALANDO MICROSOFT OFFICE..." -ForegroundColor White -BackgroundColor DarkGreen
C:\Setup\setup.exe /configure C:\Setup\Office2024.xml

Write-Host "AO FINALIZAR FINALIZAR A INSTALAÇÃO DO OFFICE TECLE ENTER PARA CONTINUAR..." -ForegroundColor White -BackgroundColor DarkGreen
Pause
cls
Write-Host "UTILIZE O IOBIT SYSTEMCARE PARA LIMPEZA DO SISTEMA" -ForegroundColor White -BackgroundColor DarkGreen
Write-Host "UTILIZE O IOBIT SMART DEFRAG PARA DESFRAGMENTAR O DISCO OU O DO PRÓPRIO WINDOWS" -ForegroundColor White -BackgroundColor DarkGreen
Write-Host "RETORNE A ESSA TELA E TECLE ENTER..." -ForegroundColor White -BackgroundColor DarkGreen
Pause

Write-Host "REMOVENDO APPS DESNECESSÁRIOS ..." -ForegroundColor White -BackgroundColor DarkGreen
Remove-Item -Path C:\Setup\ -Force -Recurse
winget remove Microsoft.Onedrive
winget remove IObit.AdvancedSystemCare
winget remove winget install IObit.SmartDefrag
cmd.exe /c "del "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadLine\ConsoleHost_history.txt""





'