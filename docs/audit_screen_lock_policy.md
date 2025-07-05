
# 📊 Auditbericht – Bildschirmsperre / Screen Lock Policy

## 🗓️ Datum / Date
05.07.2025

## 👤 Auditor
Christian Chukwuka

## 🎯 Audit-Ziel / Audit Objective
Sicherstellen, dass Benutzerkonten bei Inaktivität automatisch abgemeldet bzw. gesperrt werden, um unbefugten Zugriff zu verhindern.  
Diese Maßnahme dient der Einhaltung von:
- ISO 27001 A.11.2.9 (Clear Screen Policy)
- BSI SYS.1.2.A8 (Sperrung bei Inaktivität)
- DSGVO Art. 32
- NIST 800-53 AC-11

---

## 🔍 Audit Scope
- GPO für Bildschirmsperre auf Domänen-Clients und Server
- Gruppenrichtlinie auf `OU: IT` angewendet

---

## 📂 Auditierte Einstellungen / Audited GPO Settings

| Richtlinie / Policy                                   | GPO-Wert / GPO Value | Konform / Compliant |
|--------------------------------------------------------|----------------------|----------------------|
| Interactive logon: Machine inactivity limit            | 900 Sekunden (15 Min) | ✅ Ja                |
| Bildschirmschoner aktivieren (Enable Screen Saver)     | Aktiviert             | ✅ Ja                |
| Sperrbildschirm erzwingen (Password protect screen saver) | Aktiviert         | ✅ Ja                |

---

## 📸 Beweis / Evidence

![Bildschirmsperre](https://github.com/user-attachments/assets/6c710da7-d58f-41aa-9c8c-93ca05864270)


## ✅ Bewertung / Evaluation

**Deutsch:**  
Die Bildschirmsperre ist effektiv konfiguriert. Benutzer werden nach 15 Minuten Inaktivität automatisch abgemeldet. Dies reduziert das Risiko des physischen Zugriffs durch unautorisierte Personen.

**English:**  
The screen lock is effectively configured. Users are automatically logged off after 15 minutes of inactivity, reducing the risk of unauthorized physical access.

---

## 📌 Empfehlungen / Recommendations

- Regelmäßige Überprüfung auf Endpunkten durch Security Audits
- Awareness-Training für Benutzer zur manuellen Sperrung (`Windows + L`)

---

## 📝 Audit-Fazit / Audit Conclusion

Die Bildschirmsperre wurde erfolgreich und regelkonform implementiert. Die Richtlinie entspricht ISO/BSI/DSGVO-Anforderungen.

---

## 🔁 Wiederholungstest / Revalidation

- Benutzerkonto angemeldet
- Keine Aktivität über 15 Minuten
- System sperrt automatisch mit Passwortabfrage













Tools



