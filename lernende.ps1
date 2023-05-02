<#----------
Author: Silas Hardegger
Date: 13.04.2023
Function: Get the date and create new Folders for each Object in the File
#>

# CSV Datei laden
$lernende = Import-Csv -path lernende.csv -Delimiter ";"

# Umlaute ersetzen
$namen = $lernende.Name.Replace("ü", "ue")
$namen = $namen.Replace("ä", "ae")
$namen = $namen.Replace("ö", "oe")
$namen = $namen.Replace("é", "e")
$vornamen = $lernende.Vorname.Replace("ü", "ue")
$vornamen = $vornamen.Replace("ä", "ae")
$vornamen = $vornamen.Replace("ö", "oe")
$vornamen = $vornamen.Replace("é", "e")

for ([int64]$int = 0; $int -lt $namen.Length; $int++) {
    # Zweiter Teil des Vornamen entfernen
    $vornamen2 = $vornamen[$int].Split(" ")
    if ($vornamen2.Length -gt 1) {
        $vornamen[$int] = $vornamen2[0]
    }

    #Ordner erstellen
    $foldername = $vornamen[$int] + '.' + $namen[$int]
    $path = 'C:\temp\' + $foldername
    New-Item -ItemType 'Directory' -Path $path
}