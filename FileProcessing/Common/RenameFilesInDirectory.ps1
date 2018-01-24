

$dir = "C:\filedirectory"
$extensionQualifier = ".txt"

get-childitem -Path $dir -File | WHERE { $_.BaseName -like "prefix_*" -and $_.Extension -eq $extensionQualifier } | Rename-Item -NewName {$_.name -replace $extensionQualifier, ("_" + (get-date).ToString("yyyyMMddHHmm") + $extensionQualifier)}


