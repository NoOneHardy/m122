param(
    [Parameter(Mandatory=$true)][int32] $number,
    [Parameter(Mandatory=$true)][int32] $dif
)

1..$number | ForEach-Object {Start-Sleep -milliseconds $dif; Write-Host $_}