
# 📊 Auditbericht – Passwort-Richtlinie / Password Policy Audit Report

## 🗓️ Datum / Date
03.07.2025

## 👤 Auditor
Christian Chukwuka

## 🎯 Audit-Ziel / Audit Objective
Überprüfung der Gruppenrichtlinieneinstellungen (GPO) zur Passwortsicherheit auf Konformität mit ISO 27001:2022 A.9.2.3, BSI SYS.1.2.A15, NIST IA-5 und DSGVO Art. 32.

---

## 🔍 Audit Scope
- GPO: Default Domain Policy (Passwortrichtlinie)
- System: Windows Server 2019 (Domänencontroller)
- Benutzer: TestUser1

---

## 📂 Auditierte Einstellungen / Audited Settings

| Richtlinie / Policy                                  | GPO-Wert / GPO Value     | Konform / Compliant |
|------------------------------------------------------|---------------------------|----------------------|
| Enforce password history                             | 24 passwords remembered   | ✅ Ja                |
| Maximum password age                                 | 42 days                   | ✅ Ja                |
| Minimum password age                                 | 1 day                     | ✅ Ja                |
| Minimum password length                              | 12 characters             | ✅ Ja                |
| Password must meet complexity requirements           | Enabled                   | ✅ Ja                |
| Store passwords using reversible encryption          | Disabled                  | ✅ Ja                |

---

## 📸 Beweis / Evidence

![Passwort_policy](https://github.com/user-attachments/assets/fdbf0fb0-4d1f-4dd4-8e42-a4a4c6b93a10)


---

## ✅ Bewertung / Evaluation

**Deutsch:**  
Alle überprüften Einstellungen entsprechen den Anforderungen der geprüften Standards (ISO 27001, BSI, NIST, DSGVO). Es wurde kein Verstoß festgestellt.

**English:**  
All reviewed settings comply with the evaluated standards (ISO 27001, BSI, NIST, GDPR). No non-compliance was identified.

---

## 📌 Empfehlungen / Recommendations

**Aktuell keine Maßnahmen erforderlich.** Die Passwortrichtlinie ist vollständig konform und wird korrekt auf Domänenclients angewendet.

---

## 📝 Audit-Fazit / Audit Conclusion

Die Passwortrichtlinie erfüllt die regulatorischen Anforderungen und wurde technisch korrekt implementiert. Sie stärkt die Zugangskontrolle und reduziert das Risiko unbefugter Zugriffe erheblich.
