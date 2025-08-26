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
Example Output:

DisplayName	UserPrincipalName	UserType
Alice Franklin	alice.hr@tenant.onmicrosoft.com	Member
Bob Uchechukwu	bob.it@tenant.onmicrosoft.com	Member
TestAdmin ❌	admin@tenant.onmicrosoft.com	Member

👉 Finding: Alice & Bob ✅, TestAdmin ❌

c) Check for Shared Usage

bash
Copy code
az ad signin list --filter "userPrincipalName eq 'admin@tenant.onmicrosoft.com'" --output table
Signs of shared account: multiple IPs / locations in short timeframe ❌.

3. Audit Documentation
Audit Task	Evidence (Screenshot/CLI)	Result	Risk
Verify accounts are linked to people	Screenshot + CLI output	4 named accounts, 1 generic account found	Medium – weakens accountability

Recommendation:

Replace generic accounts with personal accounts.

Service accounts must have: Owner + Purpose + Strong password + MFA.

🇩🇪 Deutsche Version
1. Prüfungsziel
Sicherstellen, dass alle Benutzerkonten in Azure Active Directory einer benannten Person zugeordnet sind.
Keine generischen oder geteilten Konten (z. B. admin123, supportuser).

Relevante Standards:

ISO 27001 A.9.2.1 – Benutzerregistrierung und -deregistrierung

NIST AC-2 – Benutzerkontenverwaltung

BSI ORP.4.A6 – Eindeutige Benutzerkennungen

DSGVO Art. 32 – Rechenschaftspflicht & Zugriffskontrolle

2. Durchführung
a) Azure Portal

Microsoft Entra ID → Benutzer.

Überprüfen:
✅ Echte Namen → Alice Franklin, Bob Uchechukwu
❌ Generische Accounts → TestAdmin

Anmeldeprotokolle auf Nutzung prüfen.

b) Azure CLI

bash
Copy code
az ad user list --output table
Beispielausgabe:

DisplayName	UserPrincipalName	Typ
Alice Franklin	alice.hr@tenant.onmicrosoft.com	Mitglied
Bob Uchechukwu	bob.it@tenant.onmicrosoft.com	Mitglied
TestAdmin ❌	admin@tenant.onmicrosoft.com	Mitglied

3. Dokumentation
Prüfungsschritt	Nachweis	Ergebnis	Risiko
Eindeutige Zuordnung prüfen	Screenshot + CLI-Ausgabe	4 Personenkonten, 1 generisches Konto	Mittel – Nachvollziehbarkeit reduziert

Empfehlung:

Generische Accounts abschaffen.

Falls Service-Accounts notwendig → dokumentieren (Eigentümer, Zweck, Passwortpolicy, MFA).
