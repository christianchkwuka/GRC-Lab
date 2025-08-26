# 🔍 IT Audit Checklist – Verify Named Accounts (No Shared Accounts)

## 🇬🇧 English Version

### 1. Audit Objective
Ensure that all accounts in Azure Active Directory are assigned to named individuals.  
There should be no generic or shared accounts (e.g., admin123, shareduser, testaccount).

**Supports:**  
- ISO 27001 A.9.2.1 – User registration and de-registration  
- NIST AC-2 – Account Management  
- BSI ORP.4.A6 – Unique user IDs  
- GDPR Art. 32 – Accountability & access control  

---

### 2. Practical Steps
**a) Azure Portal**  
- Go to: *Microsoft Entra ID → Users*.  
- Review the list:  
  ✅ Named accounts → Alice Franklin, Bob Uchechukwu  
  ❌ Generic accounts → TestAdmin, ITSupport  
- Open user profile → check Sign-in logs for usage.  

**b) Azure CLI**  
```bash
az ad user list --output table
