

$dir = "C:\filedirectory"


get-childitem -Path $dir -File | WHERE { $_.BaseName -like "prefix_*" -and $_.Extension -eq ".txt" } | Rename-Item -NewName {$_.name -replace ".txt", ("_" + (get-date).ToString("yyyyMMddHHmm") + ".txt")}

