$username ="sa"
$pwd1 ="P@ssword"

$rootfolder = $PSScriptRoot

$rootfolder



$files = get-childitem -Path $rootfolder -Filter "*.sql"

foreach ($file in $files)
{
 [string]$content = get-content -path $file.FullName

 Invoke-Sqlcmd -ServerInstance "b3a183f5d5b1"  -Database "master" -Query $content -Username $username -Password $pwd1
}