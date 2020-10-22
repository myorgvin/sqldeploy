$server  ="b3a183f5d5b1"

$username ="sa"
$pwd ="P@ssword"

$rootfolder = $PSScriptRoot

$rootfolder

$files = get-childitem -Path $rootfolder -Filter "*.sql"

foreach ($file in $files)
{
 [string]$content = get-content -path $file.FullName

 Invoke-Sqlcmd -ServerInstance "b3a183f5d5b1"  -Database "master" -Query $content -Username $username -Password $pwd

}
    #$content = Get-Content -Path $file.





#Invoke-Sqlcmd -ServerInstance "b3a183f5d5b1"  -Database "master" -Query "select 1" -Username $username -Password $pwd