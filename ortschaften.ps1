# CSV Datei laden
$orte = Import-Csv -Path ort.csv -Delimiter ";"

# Hashable erstellen
$ortschaften = @{}

foreach ($ort in $orte) {
    # Value zusammensetzen
    $kantonPlz = "$($ort.KT): $($ort.PLZ)"
    # Überprüfen ob es den Key schon gibt und Value hinzufügen
    if ($ortschaften.ContainsKey($ort.ORTNAME)) {
        $ortschaften[$ort.ORTNAME] += ", $kantonPlz"
    } else {
        $ortschaften[$ort.ORTNAME] = $kantonPlz
    }
}

while ($true) {
    # Usereingabe für Ortschaft
    $ort = Read-Host "Gib eine Ortschaft ein"
    Write-Host "--------"
    $ortschaften.($ort)
    Write-Host "--------"
}