function processes([bool]$ShowGrid) {
    $result = Get-Process | Where-Object {$_.MainWindowTitle -ne ""} | Select-Object -Property Id, ProcessName, Path

    if ($ShowGrid) {
        return $result | Out-GridView
    } else {
        return $result | Format-List
    }
}

processes $True