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
winget upgrade -r --accept-source-agreements --accept-package-agreements
$OfficeExec = "https://c2rsetup.officeapps.live.com/c2r/download.aspx?ProductreleaseID=ProfessionalRetail&platform=x64&language=pt-br&version=O16GA"
Invoke-WebRequest -Uri $OfficeExec -OutFile "C:\Setup\OfficeSetup.exe"
$Office24XML = "https://github.com/uncpo/apps/releases/download/Apps/Office2024.xml"
Invoke-WebRequest -Uri $Office24XML -OutFile "C:\Setup\Office2024.xml"

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

Write-Host "INSTALANDO ACROBAT READER..." -ForegroundColor White -BackgroundColor DarkGreen
winget install Adobe.Acrobat.Reader.64-bit

Write-Host "INSTALANDO PDF-XCHANGE EDITOR..." -ForegroundColor White -BackgroundColor DarkGreen
winget install TrackerSoftware.PDF-XChangeEditor

Write-Host "INSTALANDO O REPRODUTOR DE MÍDIA VLC.." -ForegroundColor White -BackgroundColor DarkGreen
winget install VideoLAN.VLC

#Write-Host "INSTALANDO IOBIT ADVANCED SYSTEM CARE..." -ForegroundColor White -BackgroundColor DarkGreen
#winget install IObit.AdvancedSystemCare

Write-Host "INSTALANDO MICROSOFT OFFICE...TECLE ENTER QUANDO TERMINAR" -ForegroundColor White -BackgroundColor DarkGreen
C:\Setup\OfficeSetup.exe /configure C:\Setup\Office2024.xml
Pause

cls

chcp 1252 | Out-Null
Write-Host "#####NÃO FECHE ESSA JANELA!!!!!#####" -ForegroundColor White -BackgroundColor DarkGreen
Write-Host ""
Write-Host ""
Write-Host "EFETUE UMA LIMPEZA NO SISTEMA" -ForegroundColor White -BackgroundColor DarkGreen
Write-Host ""
Write-Host ""
Write-Host "VÁ EM CONFIGURAÇÕES -> SISTEMA -> ARMAZENAMENTO -> ARQUIVOS TEMPORÁRIOS" -ForegroundColor White -BackgroundColor DarkGreen
Write-Host "#########################FAÇA UMA LIMPEZA##############################" -ForegroundColor White -BackgroundColor DarkGreen
Write-Host ""
Write-Host ""
Write-Host "DESFRAGMENTE O DISCO, CASO SEU HD SEJA MECANICO" -ForegroundColor White -BackgroundColor DarkGreen
Write-Host ""
Write-Host ""
Write-Host "RETORNE A ESSA TELA E TECLE ENTER..." -ForegroundColor White -BackgroundColor DarkGreen
Pause

Write-Host "REMOVENDO APPS DESNECESSÁRIOS ..." -ForegroundColor White -BackgroundColor DarkGreen
Remove-Item -Path C:\Setup\ -Force -Recurse
winget remove Microsoft.Onedrive
#winget remove IObit.AdvancedSystemCare
cmd.exe /c "del "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadLine\ConsoleHost_history.txt""






