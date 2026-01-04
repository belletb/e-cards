$scriptDirectory = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent

$outputFile = Join-Path -Path $scriptDirectory -ChildPath "migration.sql"

if (Test-Path $outputFile) {
    Remove-Item $outputFile
}

$sqlFiles = Get-ChildItem -Path $scriptDirectory -Filter *.sql -File | Sort-Object Name

foreach ($file in $sqlFiles) {
    Get-Content $file | Add-Content $outputFile
}

Write-Host "Todos os arquivos foram combinados em $outputFile"
