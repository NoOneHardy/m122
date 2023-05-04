function pound($kilo) {
    $kilo = $kilo * 2.2046
    return $kilo
}

[decimal]$kilo = Read-Host "Kilogramm"
$pound = pound($kilo)
Write-Host "$kilo Kilogramm = $pound Pfund"