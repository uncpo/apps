$host.ui.RawUI.WindowTitle = “Windows Update”
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

Write-Host "AGUARDE, EXECUTANDO A PRIMEIRA VERIFICAÇÃO DE ATUALIZAÇÕES..." -ForegroundColor White -BackgroundColor DarkGreen
Write-Host "CASO APAREÇA MENSAGEM PARA REINICIAR, TECLE [ENTER]..." -ForegroundColor White -BackgroundColor DarkGreen
 Get-WindowsUpdate -WindowsUpdate -Verbose
Install-WindowsUpdate -MicrosoftUpdate -AcceptAll -Install | Out-Null
Write-Host ""
Write-Host "AGUARDE, VERIFICANDO SE EXISTEM ATUALIZAÇÕES ADICIONAIS..." -ForegroundColor White -BackgroundColor DarkGreen
Write-Host "O SISTEMA REINICIARÁ AUTOMATICAMENTE..." -ForegroundColor White -BackgroundColor DarkGreen
Install-WindowsUpdate -MicrosoftUpdate -AcceptAll -Install -AutoReboot
cmd.exe /c "del "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadLine\ConsoleHost_history.txt"" | Out-Null






