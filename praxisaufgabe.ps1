#Hashtable erstellen
$names = @{}

while ($true) {
    # Eingabe
    $input = Read-Host "Bitte gib einen Namen ein"
    # Überprüfen ob die Eingabe exit ist
    if ($input -eq "exit") {
        exit
    }

    # Vorname und Nachname trennen
    $inputNames = $input.Split(" ")
    # Vorname speichern
    $firstname = $inputNames[0]
    # Nachname speichern
    $name = $inputNames[$inputNames.Length - 1]
    $names[$firstname] = $name

    # Hashtable ausgeben
    $names
}