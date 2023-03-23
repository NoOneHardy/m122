param (
    [Parameter(Mandatory=$false)][String] $name = "Hardegger",
    [Parameter(Mandatory=$true)][String] $vorname
)

Clear-Host
Write-Host "Guten Tag $vorname $name"
Write-Host "Datum/Zeit: $((get-date).toString())"
Write-Host "Angemeldeter Benutzer: $env:username"
Write-Host "Anzahl laufender Prozesse: $((Get-Process).Count)"
