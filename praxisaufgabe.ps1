#Hashtable erstellen
$names = @{}

while ($true) {
    # Eingabe
    $input = Read-Host "Bitte gib einen Namen ein: "
    # Überprüfen ob die Eingabe exit ist
    if ($input -eq "exit") {
        exit
    }

    # Vorname und Nachname trennen
    $firstname = $input.Split(" ")[0]
    $name = $input.Split(" ")[$input.Split.Length - 1]
    $names[$firstname] = $name

    $names
}