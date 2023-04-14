param (
    [Parameter(Mandatory=$false)][String] $driveName = "C:"
)

$drive = Get-WmiObject Win32_LogicalDisk | Where-Object {$_.DeviceID -eq $driveName} | Select-Object Size
$capacity = $drive | ForEach-Object { $_.Size / 1GB }

Write-Host "Speicherplatz: $capacity GB"
Write-Host ""

# Kommentar
<#
Ein mehrzeiliger Kommentar
#>
C:\Users\no1ha\Documents\GitHub\Powershell\..\Powershell\m122\23.03.2023.ps1 60 1000
