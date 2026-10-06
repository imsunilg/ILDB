# Requires PGPASSWORD in the environment. psql must be on PATH.
$ErrorActionPreference = 'Stop'
if (-not $env:PGPASSWORD) { Write-Error 'PGPASSWORD is not set. Run: $env:PGPASSWORD = "<password>"'; exit 1 }
$env:PGOPTIONS = '-c client_min_messages=warning'
$h = @('-h','localhost','-p','5432','-U','postgres','-v','ON_ERROR_STOP=1')
Push-Location $PSScriptRoot
try {
  psql @h -d postgres -f 00_create_database.sql; if ($LASTEXITCODE) { throw 'create database failed' }
  foreach ($f in '01_database','02_schema','03_tables','04_indexes','05_functions','06_seed_data','07_views') {
    psql @h -d ILPortal -f "$f.sql"; if ($LASTEXITCODE) { throw "$f failed" }
  }
  Write-Host 'ILPortal database scripts applied successfully.'
  psql @h -d ILPortal -c "SELECT schema_name FROM information_schema.schemata WHERE schema_name IN ('auth','customer','product','motor','home','travel','liability','quote','common','audit') ORDER BY schema_name;"
} finally { Pop-Location }

