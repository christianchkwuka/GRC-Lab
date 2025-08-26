# Set-RBAC.ps1
# Purpose: Assign RBAC role to a group in Azure

param(
    [string]$GroupName,
    [string]$RoleName,
    [string]$Scope
)

Write-Host "Assigning role $RoleName to $GroupName at scope $Scope"

az role assignment create `
  --assignee $GroupName `
  --role $RoleName `
  --scope $Scope
