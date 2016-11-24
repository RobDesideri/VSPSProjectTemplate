#Check dependencies
& "$PSScriptRoot\InstallTestingDepends.ps1"

#Import PowerShellTestingHelpers module
Import-Module "$PSScriptRoot\lib\PowerShellTestingHelpers" -Global

#Import data files
$fp = "$PSScriptRoot\data\*.ps1"
$fpCollection = @( Get-ChildItem -Path $fp -ErrorAction SilentlyContinue )
Foreach($import in @($fpCollection))
{
	Try
	{
		. $import.FullName
	}
	Catch
	{
		Write-Error -Message "Failed to import function $($import.fullname): $_"
	}
}