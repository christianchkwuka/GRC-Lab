# ✅ Azure RBAC Audit Checklist

This checklist provides step-by-step audit tasks for validating RBAC (Role-Based Access Control) in Azure IAM Lab.  

| Control Area            | Audit Task                                                                 | Evidence to Collect                                   | Compliance Reference                        |
|--------------------------|-----------------------------------------------------------------------------|------------------------------------------------------|---------------------------------------------|
| **Identity Management**  | Verify all accounts are linked to named individuals (no shared accounts). | User list from Azure Entra ID (`az ad user list`).    | ISO 27001 A.9.2.1, NIST AC-2                 |
| **Group-Based Access**   | Confirm access is assigned via groups, not directly to individuals.        | Screenshot of groups + role assignment.              | ISO 27001 A.9.2.3, BSI ORP.4.A6              |
| **Least Privilege**      | Validate that roles are scoped properly (IT=Contributor, HR=Reader).       | `az role assignment list -o table`.                  | ISO 27001 A.9.1.2, NIST AC-6                 |
| **Segregation of Duties**| Ensure Finance, HR, IT groups have separate/non-overlapping roles.         | Group membership + assigned roles.                   | ISO 27001 A.6.1.2, GDPR Art. 32              |
| **Logging & Monitoring** | Check if Activity Logs capture role assignments and group changes.         | Azure Activity Log export settings.                  | ISO 27001 A.12.4.1, NIST AU-2                |
| **Privileged Access**    | Verify no group has unnecessary Owner role.                               | Subscription-level role list.                        | ISO 27001 A.9.4.4, NIST AC-5                 |
| **Periodic Review**      | Ensure quarterly access review is in place.                               | Evidence of Access Review Policy/config screenshots. | ISO 27001 A.9.2.5, GDPR Art. 25              |

📌 **Note:** Service accounts must always have: **Owner + Purpose + MFA + Monitoring**.
