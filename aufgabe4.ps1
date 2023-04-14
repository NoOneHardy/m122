# Prozesse auflisten
$processes = Get-Process

# Farben definieren
$greenColor = "Green"
$whiteColor = "White"
$redColor = "Red"

# Zähler initialisieren
$greenCount = 0
$whiteCount = 0
$redCount = 0

# Jeden Prozess durchgehen und Farbe der CPU-Zeit entsprechend auswählen
foreach ($process in $processes) {
    if ($process.CPU -lt 300) {
        Write-Host $process.ProcessName -ForegroundColor $greenColor
        $greenCount++
    }
    elseif ($process.CPU -lt 1000) {
        Write-Host $process.ProcessName -ForegroundColor $whiteColor
        $whiteCount++
    }
    else {
        Write-Host $process.ProcessName -ForegroundColor $redColor
        $redCount++
    }
}

# Zusammenfassung ausgeben
Write-Host "Anzahl grüner Prozesse: $greenCount"
Write-Host "Anzahl weisser Prozesse: $whiteCount"
Write-Host "Anzahl roter Prozesse: $redCount"
