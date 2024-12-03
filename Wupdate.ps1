#Executa o Windows Update

chcp 1252 | Out-Null
Write-Host ""
Write-Host ""
Write-Host ""
Write-Host ""
Write-Host ""

Write-Host "EFETUANDO WINDOWS UPDATE, NÃO FECHE ESSA JANELA..." -ForegroundColor White -BackgroundColor DarkGreen
Write-Host "O SISTEMA IRA REINICIAR APÓS O TERMINO..." -ForegroundColor White -BackgroundColor DarkGreen

Write-Host ""
Write-Host ""
Write-Host ""

Install-Module -name PSWindowsUpdate -force | Out-Null
Import-Module PSWindowsUpdate | Out-Null

Write-Host "AGUARDE, EXECUTANDO A PRIMEIRA VERIFICAÇÃO DE UPDATES..." -ForegroundColor White -BackgroundColor DarkGreen
Install-WindowsUpdate -MicrosoftUpdate -AcceptAll -Install | Out-Null
Write-Host ""
Write-Host "AGUARDE, EXECUTANDO A SEGUNDA VERIFICAÇÃO DE UPDATES..." -ForegroundColor White -BackgroundColor DarkGreen
Install-WindowsUpdate -MicrosoftUpdate -AcceptAll -Install | Out-Null
Write-Host ""
Write-Host "AGUARDE, EXECUTANDO A VERIFICAÇÃO FINAL..." -ForegroundColor White -BackgroundColor DarkGreen
Install-WindowsUpdate -MicrosoftUpdate -AcceptAll -Install -AutoReboot | Out-Null




cmd.exe /c "del "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadLine\ConsoleHost_history.txt"" | Out-Null