


# 🔐 Identity Management Verification / Identitätsmanagement-Verifizierung  

## 📌 Purpose / Ziel  
**Deutsch:**  
Diese Prüfung stellt sicher, dass alle Benutzerkonten im Azure Active Directory (AAD) mit benannten Personen verknüpft sind. Gemeinsame oder generische Konten sind untersagt, da sie die Nachvollziehbarkeit und Verantwortlichkeit beeinträchtigen.  

**English:**  
This control ensures that all user accounts in Azure Active Directory (AAD) are linked to named individuals. Shared or generic accounts are prohibited as they undermine accountability and traceability.  

---

## 🛠 Verification Steps / Prüfungsschritte  
- ✅ Überprüfung der Benutzerliste im Azure AD Portal  
- ✅ Abgleich von *Display Name* und *User Principal Name (UPN)*  
- ✅ Sicherstellen, dass keine generischen Accounts wie `User1`, `Admin`, `SharedAccount` vorhanden sind  
- ✅ Prüfen, ob alle Benutzer realen Personen zugeordnet werden können  

---

## 📊 Audit Evidence / Auditnachweis  
**Screenshot:**  
<img width="1913" height="903" alt="User_List" src="https://github.com/user-attachments/assets/45d62bc4-6f3d-45d8-92a5-01751cb0dfd2" />

---

## 📑 Audit Notes / Prüfhinweise  
- Jeder Benutzer hat einen echten Namen (**Alice, Bob, Carol, David, Christian**)  
- UPNs folgen einem E-Mail-ähnlichen Format (`user@domain.onmicrosoft.com`)  
- Keine anonymen oder gemeinsam genutzten Konten gefunden  
- Alle Benutzerkonten sind eindeutig zuordenbar  

---

## 📡 Standards Mapping / Normen-Mapping  
- **ISO 27001 A.9.2.1** → User registration and de-registration / Benutzerregistrierung und -abmeldung  
- **NIST AC-2** → Account Management  
- **BSI ORP.4.A4** → Personenbezogene Benutzerkennung  
- **GDPR Art. 32** → Access control linked to identifiable persons  

---

✅ **Audit Result / Prüfungsergebnis:**  
- Compliant / Konform  
Vorteile dieser Vorlage:
Icons + Struktur → besser lesbar auf GitHub

Zweisprachig (Deutsch + Englisch) → ideal für Arbeitgeber, Auditoren und internationale Leser

Standards Mapping → zeigt Professionalität (ISO, NIST, BSI, GDPR)

Audit Result → klare Aussage am Ende

