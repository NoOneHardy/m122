<#----------
Author: Silas Hardegger
Date: 13.04.2023
Function: Get the date and create new Folders for each Object in the File
#>

# Get File Content
$lernende = Import-Csv -path C:\Users\no1ha\Downloads\lernende.csv -Delimiter ";"

$namen = $lernende.Name.Replace("ü", "ue")
$namen = $namen.Replace("ä", "ae")
$namen = $namen.Replace("ö", "oe")
$namen = $namen.Replace("é", "e")
$vornamen = $lernende.Vorname.Replace("ü", "ue")
$vornamen = $vornamen.Replace("ä", "ae")
$vornamen = $vornamen.Replace("ö", "oe")
$vornamen = $vornamen.Replace("é", "e")

for ([int64]$int = 0; $int -lt $namen.Length; $int++) {
    $vornamen2 = $vornamen[$int].Split(" ")
    if ($vornamen2.Length -gt 1) {
        $vornamen[$int] = $vornamen2[0]
    }
    $foldername = $vornamen[$int] + '.' + $namen[$int]
    $path = 'C:\Users\no1ha\Downloads\' + $foldername
    New-Item -ItemType 'Directory' -Path $path
}

exit