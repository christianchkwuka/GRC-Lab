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
📑 Template: RBAC_Audit_Report.md
markdown
Copy code
# 📋 RBAC Audit Report – Azure IAM Lab

**Auditor:** [Your Name]  
**Date:** [Insert Date]  
**Scope:** Azure Entra ID, Resource Group (GRC-Lab-RG), RBAC roles  

---

## 1️⃣ Objective
Evaluate whether Azure IAM and RBAC controls are designed and implemented effectively to enforce **least privilege**, **segregation of duties**, and compliance with **ISO 27001, NIST, BSI, GDPR**.

---

## 2️⃣ Methodology
- Reviewed Azure Entra ID configuration  
- Inspected role assignments via **Azure CLI & Portal**  
- Tested user access by logging in as Alice (HR), Bob (IT)  
- Collected **screenshots + CLI outputs** as evidence  

---

## 3️⃣ Findings

| Finding ID | Observation                                                      | Risk Rating   | Evidence                        | Framework Mapping             |
|------------|------------------------------------------------------------------|---------------|---------------------------------|--------------------------------|
| F-001      | IT Group has Contributor role at Resource Group level.           | ✅ Compliant  | Screenshot + CLI output         | ISO 27001 A.9.1.2              |
| F-002      | HR Group assigned Reader role – cannot modify resources.         | ✅ Compliant  | Test login (Alice read-only)    | NIST AC-6                      |
| F-003      | No quarterly Access Review Policy defined.                       | ⚠️ Medium     | Access Reviews not configured   | ISO 27001 A.9.2.5, GDPR Art.32 |
| F-004      | Activity Logs enabled but not exported to SIEM (Wazuh).          | ⚠️ High       | Log settings reviewed           | ISO 27001 A.12.4.1, BSI OPS.2  |

---

## 4️⃣ Risk Assessment
- **High:** Lack of log forwarding → risk of undetected privilege abuse.  
- **Medium:** Missing access reviews → stale permissions may persist.  
- **Low:** No Owner roles beyond Admin detected → acceptable.  

---

## 5️⃣ Recommendations
- 🔹 Enable **Activity Log export** to Wazuh SIEM for monitoring.  
- 🔹 Configure **quarterly Access Reviews** in Entra ID.  
- 🔹 Continue enforcing **group-based RBAC**, avoid direct user assignments.  
- 🔹 Implement **Just-In-Time (JIT)** access for privileged accounts via PIM.  

---

## 6️⃣ Conclusion
The current RBAC setup demonstrates good alignment with **least privilege** and **segregation of duties**.  
However, improvements are needed in **monitoring** and **access reviews** for full compliance with **
