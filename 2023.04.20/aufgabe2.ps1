function date() {
    $dateHash = @{}
    $date = Get-Date -Format "dd-MM-yyyy"
    $dateHash["d"] = $date.Split("-")[0]
    $dateHash["m"] = $date.Split("-")[1]
    $dateHash["y"] = $date.Split("-")[2]
    
    return $dateHash
}

date