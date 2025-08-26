# 🔐 Identity Management Audit – Named User Accounts

## 🎯 Purpose
Ensure that **all accounts in Azure AD are linked to named individuals**.  
Shared or anonymous accounts increase security risks and reduce accountability.  

---

## 1️⃣ Azure CLI Verification

Run the following command to list all users in Azure AD:

```bash
az ad user list --output table
✅ Example Output
DisplayName	UserPrincipalName	UserType
Alice Franklin	alice.hr@tenant.onmicrosoft.com	Member
Bob Uchechukwu	bob.it@tenant.onmicrosoft.com	Member
TestAdmin ❌	admin@tenant.onmicrosoft.com	Member

🔎 Findings
Alice Franklin → ✔️ Named individual

Bob Uchechukwu → ✔️ Named individual

TestAdmin → ❌ Generic / shared account (should be remediated)

2️⃣ Check for Shared Usage
Run the following to review sign-in logs for suspicious patterns:

bash
Copy code
az ad signin list --filter "userPrincipalName eq 'admin@tenant.onmicrosoft.com'"
⚠️ Signs of Shared Account
Multiple IP addresses within short timeframes

Logins from geographically distant locations

No linked personal identity

3️⃣ Audit Documentation
Audit Task	Evidence (Screenshot/CLI)	Result	Risk
Verify accounts are linked to real people	Screenshot + CLI Output	Pass/Fail	High if generic accounts exist

4️⃣ Recommendations
✔️ Replace all generic accounts (e.g., TestAdmin, Admin) with personal accounts.
✔️ For service accounts:

Must have Owner

Must have Documented Purpose

Enforce Strong Password + MFA + Conditional Access

📊 Framework Mapping
ISO 27001 A.9.2.1 – User registration and de-registration

NIST AC-2 – Account management

BSI ORP.4.A4 – Personal user identification

GDPR Art. 32 – Access control linked to individual
