function fahrenheit($celsius) {
    return ($celsius * 9 / 5) + 32
}

[int]$celsius = Read-Host "Celsius"
$fahrenheit = fahrenheit $celsius

$fahrenheit.ToString() + "°F"