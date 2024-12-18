#Instala pré-requisitos do Windows Update e Inicia o processo de atualização

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

# Desativa SmatScreen

Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\AppHost" -Name "EnableWebContentEvaluation" -Value 0 -Force | Out-Null
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer" -Name "SmartScreenEnabled" -Value "Off" -Force | Out-Null

Set-ExecutionPolicy Unrestricted 

Invoke-RestMethod https://github.com/PowerShell/PowerShell/releases/download/v7.4.6/PowerShell-7.4.6-win-x64.msi -OutFile C:\Setup\PowerShell-7.4.6-win-x64.msi

Start-Process msiexec.exe -Wait -ArgumentList '/i "C:\Setup\PowerShell-7.4.6-win-x64.msi" /q '


Start-Process "pwsh.exe" -Wait -WindowStyle Maximized -ArgumentList '-command irm github.com/asheroto/winget-install/releases/download/5.0.4/winget-install.ps1 | iex'

Start-Process "pwsh.exe" -Wait -WindowStyle Maximized -ArgumentList '-command irm github.com/uncpo/apps/releases/download/Apps/Wupdate.ps1 | iex'

