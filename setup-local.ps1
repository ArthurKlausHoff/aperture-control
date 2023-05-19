Start-Transcript -Path "setup-local.log"

# Elevate to Administrator and run
$acpath = "$pwd"
Write-Output "Launching run-ac-recipes.ps1 as Administrator"
Start-Process -Wait -Verb runAs -ArgumentList "-ExecutionPolicy", "Bypass", "-NoLogo", "-NonInteractive", "-Command", "cd $acpath; .\run-ac-recipes.ps1" powershell.exe

Stop-Transcript

