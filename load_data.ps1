# Loads the exported data (data/*.sql) into the target database, in dependency order.
# Prerequisite: the schema exists (run_all.ps1, ideally with ILPORTAL_ENV=Production so no demo users are seeded first).
# Requires PGPASSWORD. ILPORTAL_DB overrides the database name. Re-running is safe (ON CONFLICT DO NOTHING).
$ErrorActionPreference = 'Stop'
if (-not $env:PGPASSWORD) { Write-Error 'PGPASSWORD is not set.'; exit 1 }
$env:PGOPTIONS = '-c client_min_messages=warning'
$db = if ($env:ILPORTAL_DB) { $env:ILPORTAL_DB } else { 'ILPortal' }
Push-Location "$PSScriptRoot\data"
try {
  foreach ($f in Get-ChildItem '0*.sql' | Sort-Object Name) {
    psql -h localhost -p 5432 -U postgres -d $db -v ON_ERROR_STOP=1 -q -f $f.Name
    if ($LASTEXITCODE) { throw "$($f.Name) failed" }
    "loaded $($f.Name)"
  }
} finally { Pop-Location }
