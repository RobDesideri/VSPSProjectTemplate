# Import testing helpers dependencies
& "$PSScriptRoot\shared.ps1"

$ModuleManifestName = '$safeprojectname$.psd1'
$ModuleManifestPath = "$PSScriptRoot\..\src\$ModuleManifestName"

if (!$SuppressImportModule) {
    # -Scope Global is needed when running tests from inside of psake, otherwise
    # the module's functions cannot be found in the PowerShellOffice\ namespace
    Import-Module $ModuleManifestPath -Scope Global
}

Describe "$projectname$" {
	Context "Function Exists" {
		It "Should Return" {
		
		}
	}
}