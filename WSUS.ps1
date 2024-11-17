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

Set-ExecutionPolicy Unrestricted 

Invoke-RestMethod https://github.com/PowerShell/PowerShell/releases/download/v7.4.6/PowerShell-7.4.6-win-x64.msi -OutFile C:\Setup\PowerShell-7.4.6-win-x64.msi

Start-Process msiexec.exe -Wait -ArgumentList '/i "C:\Setup\PowerShell-7.4.6-win-x64.msi" /q '


Start-Process "pwsh.exe" -Wait -WindowStyle Maximized -ArgumentList '-command irm https://github.com/asheroto/winget-install/releases/download/5.0.4/winget-install.ps1 | iex'

Start-Process "pwsh.exe" -Wait -WindowStyle Maximized -ArgumentList '-command irm https://github.com/MitchelPB/Apps/releases/download/app/Wupdate.ps1 | iex | iex'


