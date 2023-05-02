$schueler = Import-Csv "schueler.csv" -Delimiter ";"
$grades = @()

for ($index = 0; $index -lt $schueler.Length; $index++) {
    if ($schueler[$index].Klasse -eq "") {
        continue
    }
    $path = "C:\temp\"
    $gradeExists = $grades.Contains($schueler[$index].Klasse)
    $fileName = $schueler[$index].Klasse + ".csv"
    if (!$gradeExists) {
        $grades += $schueler[$index].Klasse
        New-Item -ItemType File -Path $path -Name $fileName
    }

    $path = $path + $fileName
    $content = Get-Content $path
    $name = $schueler[$index].Name
    $vorname = $schueler[$index].Vorname
    $username = "$vorname.$name"
    $password = "$vorname,$name"
    $content += "$name;$vorname;$username;$password`n"
    Set-Content $path -Value $content
}