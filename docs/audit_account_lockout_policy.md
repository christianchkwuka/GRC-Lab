

🧾 Auditbericht: Kontosperrungsrichtlinie (Deutsch + Englisch)

# 📊 Auditbericht – Account Lockout Policy / Kontosperrungsrichtlinie

## 🗓️ Datum / Date
04.07.2025

## 👤 Auditor
Christian Chukwuka

## 🎯 Audit-Ziel / Audit Objective
Sicherstellen, dass Kontosperrungsrichtlinien implementiert wurden, um Brute-Force-Angriffe zu verhindern, in Übereinstimmung mit ISO 27001 A.9.4.2, BSI SYS.1.2.A16, NIST AC-7 und DSGVO Art. 32.

---

## 🔍 Audit Scope
- Gruppenrichtlinie: Default Domain Policy  
- Server: Windows Server 2019  
- Ziel: Domänenbenutzerkonten

---

## 📂 Auditierte Einstellungen / Audited Settings

| Richtlinie / Policy                   | GPO-Wert / GPO Value   | Konform / Compliant |
|--------------------------------------|-------------------------|----------------------|
| Account lockout threshold            | 5 invalid attempts      | ✅ Ja                |
| Account lockout duration             | 15 minutes              | ✅ Ja                |
| Reset account lockout counter after | 15 minutes              | ✅ Ja                |

---

## 📸 Beweis / Evidence

![kontosperrungsrichtlinien](https://github.com/user-attachments/assets/acf80ce6-a4df-4208-9d4e-b6e314d1bb53)


---

## ✅ Bewertung / Evaluation

**Deutsch:**  
Die Richtlinie erfüllt die Mindestanforderungen aller relevanten Sicherheitsstandards. Die Schwellenwerte zum Schutz vor Passwort-Angriffen wurden korrekt gesetzt.

**English:**  
The policy meets the minimum requirements of relevant security standards. Lockout thresholds are correctly configured to prevent password guessing attacks.

---

## 📌 Empfehlungen / Recommendations

- **Keine Änderung erforderlich.**  
- Empfehlung: Überwachung aktiver Sperrvorgänge über SIEM (z. B. Wazuh oder Splunk), um potenzielle Angriffsversuche frühzeitig zu erkennen.

---

## 📝 Audit-Fazit / Audit Conclusion

Die Account Lockout Policy ist korrekt implementiert und erfüllt alle wesentlichen Compliance-Vorgaben. Die Konfiguration ist geeignet, um unbefugte Zugriffsversuche effektiv zu blockieren.









