# Alle Items die im Pfad C:\Windows sind und auf .exe enden aufrufen
Get-ChildItem -Path "C:\Windows" -Filter "*.exe" -Recurse | ForEach-Object {
    $file = $_
    # Versionsinfo abrufen
    $versionInfo = Get-ItemProperty -Path $file.FullName -Name VersionInfo
    # Ausgabe formatieren
    Write-Output "Name: $($file.Name), Produktversion: $($versionInfo.ProductVersion), Grösse: $($file.Length) Bytes"
}