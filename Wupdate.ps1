#Executa o Windows Update

chcp 1252 | Out-Null
Write-Host ""
Write-Host ""
Write-Host ""
Write-Host ""
Write-Host ""

Write-Host "PROCESSO SENDO EXECUTADO, NÃO FECHE ESTA JANELA..." -ForegroundColor White -BackgroundColor DarkGreen
Write-Host "O SISTEMA IRA REINICIAR APÓS O TERMINO..." -ForegroundColor White -BackgroundColor DarkGreen
Write-Host "CASO NÃO, REINICIE PARA APLICAR AS ATUALIZACOES..." -ForegroundColor White -BackgroundColor DarkGreen

Write-Host ""
Write-Host ""
Write-Host ""

Install-Module -name PSWindowsUpdate -force | Out-Null
Import-Module PSWindowsUpdate | Out-Null

Install-WindowsUpdate -MicrosoftUpdate -AcceptAll -Install -AutoReboot | Out-Null
cmd.exe /c "del "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadLine\ConsoleHost_history.txt""