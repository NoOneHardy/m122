$processes = Get-Process
$CountRed = 0
$CountWhite = 0
$countGreen = 0

for ($index = 0; $index -lt $processes.Length; $index++) {
    $process = $processes[$index]
    if ($process.CPU -gt 0) {
        $output = "Name: " + $process.Name + " | CPU: " + $process.CPU
    } else {
        $output = "Name: " + $process.Name + " | CPU: 0.00"
    }

    if ($process.CPU -lt 0.3) {
        Write-Host $output -ForegroundColor 'green'
        $countGreen++
    } elseif ($process.CPU -lt 1) {
        Write-Host $output -ForegroundColor 'white'
        $countWhite++
    } else {
        Write-Host $output -ForegroundColor 'red'
        $countRed++
    }
}

Write-Host "Red: $countRed | White: $countWhite | Green: $countGreen"