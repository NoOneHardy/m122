$begriff = Read-Host "Welchen Begriff möchten Sie ersetzen?"
$ersatz = Read-Host "Durch Welchen Begriff wollen Sie den oben genannten Begriff ersetzen?"
$path = Read-Host "Wo ist das Basisverzeichnis?"

$tree = Get-ChildItem $path

for ($index = 0; $index -lt $tree.Length; $index++) {
    $item = $tree[$index].FullName
    $content = Get-Content $item
    $content = $content.Replace($begriff, $ersatz)
    Set-Content $item $content
}