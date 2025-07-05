🧾 Auditbericht – USB Access Policy / Richtlinie für Wechseldatenträger (Deutsch + Englisch)

# 📊 Auditbericht – USB Access Policy / USB-Zugriffskontrolle

## 🗓️ Datum / Date
05.07.2025

## 👤 Auditor
Christian Chukwuka

## 🎯 Audit-Ziel / Audit Objective
Verhindern der Nutzung nicht autorisierter USB-Speichergeräte zum Schutz vor Datenverlust und Malware-Infektionen, in Einklang mit:
- ISO 27001 A.8.3.1 (Asset Management)
- A.9.1.2 (Access Control)
- BSI OPS.1.2.A6
- DSGVO Art. 32
- NIST 800-53 MP-7, AC-19

---

## 🔍 Audit Scope
- Gruppenrichtlinie: USB Access GPO  
- Zielsystem: Windows Server 2019 + verbundene Clients

---

## 📂 Auditierte Einstellungen / Audited GPO Settings

| Richtlinie / Policy                                             | GPO-Wert / GPO Value   | Konform / Compliant |
|------------------------------------------------------------------|-------------------------|----------------------|
| All removable storage classes: Deny all access                   | Enabled                 | ✅ Ja                |
| Prevent installation of removable devices                        | Enabled                 | ✅ Ja                |
| Removable Disks: Deny read access                                | Enabled                 | ✅ Ja                |
| Removable Disks: Deny write access                               | Enabled                 | ✅ Ja                |

---

## 📸 Beweis / Evidence



---

## ✅ Bewertung / Evaluation

**Deutsch:**  
Die USB-Zugriffsrichtlinie ist aktiv und vollständig implementiert. Der Zugriff auf Wechseldatenträger ist systemweit blockiert, was das Risiko von Datenabfluss und Infektionen minimiert.

**English:**  
The USB access policy is active and fully implemented. Access to removable storage is system-wide blocked, minimizing data leakage and infection risks.

---

## 📌 Empfehlungen / Recommendations

- Überwachung der GPO-Einhaltung auf allen Endpunkten über ein zentrales Managementsystem oder ein SIEM (z. B. Wazuh).
- Dokumentation von Ausnahmeregelungen mit expliziter Genehmigung durch die IT-Sicherheitsabteilung.

---

## 📝 Audit-Fazit / Audit Conclusion

Die USB Access Policy wurde korrekt umgesetzt und erfüllt alle relevanten Compliance-Standards. Kein unautorisierter Zugriff auf USB-Speichergeräte möglich.

---

## 🔁 Wiederholungstest / Revalidation

- Ein USB-Stick wurde in einen Client eingesteckt
- Zugriff wurde erfolgreich verweigert (kein Laufwerksbuchstabe zugewiesen)

