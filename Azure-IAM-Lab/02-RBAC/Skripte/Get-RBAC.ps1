# Get-RBAC.ps1
# Purpose: List RBAC assignments for a resource group

param(
    [string]$Scope
)

Write-Host "Getting RBAC assignments for $Scope"

az role assignment list `
  --scope $Scope `
  --output table
