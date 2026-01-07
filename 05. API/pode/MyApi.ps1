
Param(
    $Name,
    $Age,
    $Color
)
$MyUserListFile = "$PSScriptRoot\MyLabFile.csv"
$MyUserList = Get-Content -Path $MyUserListFile | ConvertFrom-Csv
    
if ($Name) {
    $MyUserList | Where-Object { $_.Name -eq $Name }
}
elseif ($Age) {
    $MyUserList | Where-Object { $_.Age -eq $Age }
}
elseif ($Color) {
    $MyUserList | Where-Object { $_.Color -eq $Color }
}
else {
    $MyUserList
}
