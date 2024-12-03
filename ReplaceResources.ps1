param(
    [Parameter(Mandatory = $true, ValueFromPipeline = $true)]
    [string] $BuildDirectory,
    [Parameter(Mandatory = $true, ValueFromPipeline = $true)]
    [string] $BuildVersion
)

$workDir = $PSScriptRoot
$resDir = "$workDir\..\Resources"

# 拷贝图标
Copy-Item -Force -Recurse -Path "$resDir\FileIcons\*.ico" -Destination "$BuildDirectory\CPP\7zip\Archive\Icons"

# 拷贝资源文件
Copy-Item -Force -Path "$resDir\Format7zF.rc" -Destination "$BuildDirectory\CPP\7zip\Bundles\Format7zF\resource.rc"
Copy-Item -Force -Path "$resDir\Fm.rc" -Destination "$BuildDirectory\CPP\7zip\Bundles\Fm\resource.rc"

# 拷贝UI图
Copy-Item -Force -Path "$resDir\ToolBarIcons\*.bmp" -Destination "$BuildDirectory\CPP\7zip\UI\FileManager"
