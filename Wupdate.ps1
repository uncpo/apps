chcp 1252 | Out-Null
Write-Host ""
Write-Host ""
Write-Host ""
Write-Host ""
Write-Host ""

Write-Host "PROCESSO SENDO EXECUTADO, NAO FECHE ESTA JANELA..." -ForegroundColor White -BackgroundColor DarkGreen
Write-Host "O SISTEMA IRA REINICIAR APOS O TERMINO..." -ForegroundColor White -BackgroundColor DarkGreen
Write-Host "SE NAO, REINICIE PARA APLICAR AS ATUALIZACOES..." -ForegroundColor White -BackgroundColor DarkGreen


Install-Module -name PSWindowsUpdate -force
Import-Module PSWindowsUpdate

Write-Host ""
Write-Host ""
Write-Host ""
Write-Host ""
Write-Host ""

Install-WindowsUpdate -MicrosoftUpdate -AcceptAll -Install -AutoReboot | Out-Null
cmd.exe /c "del "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadLine\ConsoleHost_history.txt""