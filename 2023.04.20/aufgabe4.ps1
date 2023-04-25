function month() {
    [int]$month = (Get-Date).Month

    $monthNames = @('Januar', 'Februar', 'März', 'April', 'Mai', 'Juni', 'Juli', 'August', 'September', 'Oktober', 'November', 'Dezember')
    return $monthNames[$month - 1]
}

function weekday() {
    [string]$weekday = Get-Date -Format "dddd"
    # $weekdayNames = @{'Monday'='Montag'; 'Tuesday' = 'Dienstag'; 'Wednesday' = 'Mittwoch'; 'Thursday' = 'Donnerstag'; 'Friday' = 'Freitag'; 'Saturday' = 'Samstag'; 'Sunday' = 'Sonntag'}
    return $weekday # $weekdayNames[$weekday]
}

month
weekday