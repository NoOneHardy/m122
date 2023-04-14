Get-ChildItem -Path "C:\Windows" -Filter "*.exe" -Recurse | ForEach-Object {
    $file = $_
    $versionInfo = Get-ItemProperty -Path $file.FullName -Name VersionInfo
    Write-Output "Name: $($file.Name), Produktversion: $($versionInfo.ProductVersion), Grösse: $($file.Length) Bytes"
}