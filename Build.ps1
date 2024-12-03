$buildVersion = '7z2409'

$workDir = $PSScriptRoot
$buildDir = "$workDir\Build"
if (Test-Path $buildDir) {
    Copy-Item -Path "$workDir\ReplaceResources.ps1" -Destination "$buildDir\SubPrepare.ps1"
    & "$buildDir\AutoBuild.ps1" $buildVersion
} else {
    throw '7-Zip Builder Not Found.'
}
