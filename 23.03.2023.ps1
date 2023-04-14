param(
    [Parameter(Mandatory=$true)][int32] $number,
    [Parameter(Mandatory=$true)][int32] $dif
)

for ($int = 1; $int -le $number; $int++) {
    Start-Sleep -milliseconds $dif
    Write-Host $int
}