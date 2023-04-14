$orte = Import-Csv -Path C:\Users\no1ha\Downloads\ort.csv -Delimiter ";"

$ortschaften = @{}

foreach ($ort in $orte) {
    $kantonPlz = "$($ort.KT): $($ort.PLZ)"
    if ($ortschaften.ContainsKey($ort.ORTNAME)) {
        $ortschaften[$ort.ORTNAME] += ", $kantonPlz"
    } else {
        $ortschaften[$ort.ORTNAME] = $kantonPlz
    }
}

while ($true) {
    $ort = Read-Host "Gib eine Ortschaft ein"
    Write-Host "--------"
    $ortschaften.($ort)
    Write-Host "--------"
}