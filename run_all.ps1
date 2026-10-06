# Requires PGPASSWORD in the environment. psql must be on PATH.
$ErrorActionPreference = 'Stop'
if (-not $env:PGPASSWORD) { Write-Error 'PGPASSWORD is not set. Run: $env:PGPASSWORD = "<password>"'; exit 1 }
$env:PGOPTIONS = '-c client_min_messages=warning'
$h = @('-h','localhost','-p','5432','-U','postgres','-v','ON_ERROR_STOP=1')
$db = if ($env:ILPORTAL_DB) { $env:ILPORTAL_DB } else { 'ILPortal' }
$prod = $env:ILPORTAL_ENV -eq 'Production'
Push-Location $PSScriptRoot
try {
  psql @h -d postgres -v dbname=$db -f 00_create_database.sql; if ($LASTEXITCODE) { throw 'create database failed' }
  $files = @('01_database','02_schema','03_tables','04_indexes','05_functions','06_seed_data','07_views')
  if (-not $prod) { $files += '08_demo_users' } else { Write-Host 'Production: demo users NOT seeded.' }
  foreach ($f in $files) {
    psql @h -d $db -f "$f.sql"; if ($LASTEXITCODE) { throw "$f failed" }
  }
  Write-Host 'ILPortal database scripts applied successfully.'
  psql @h -d $db -c "SELECT schema_name FROM information_schema.schemata WHERE schema_name IN ('auth','customer','product','motor','home','travel','liability','quote','common','audit') ORDER BY schema_name;"
} finally { Pop-Location }


