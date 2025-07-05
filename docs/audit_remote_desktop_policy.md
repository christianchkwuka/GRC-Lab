
# 📊 Auditbericht – Remote Desktop / Remotedesktoprichtlinie

## 🗓️ Datum / Date
05.07.2025

## 👤 Auditor
Christian Chukwuka

## 🎯 Audit-Ziel / Audit Objective
Sicherstellen, dass der Remotezugriff über RDP (Remote Desktop Protocol) nur autorisierten Benutzern gewährt wird und Sicherheitsmaßnahmen wie NLA (Network Level Authentication) aktiv sind.

Konformitätsanforderungen:
- ISO 27001 A.9.4.2 (Secure log-on procedures)
- BSI SYS.1.3.A15 (Remotezugriff absichern)
- NIST 800-53 AC-17
- DSGVO Artikel 32 (technische Sicherheitsmaßnahmen)

---

## 🔍 Audit Scope
- GPO für Remotedesktop auf Terminalserver und ausgewählten Arbeitsstationen
- OU: IT, Remote Support

---

## 📂 Auditierte Einstellungen / Audited GPO Settings

| Richtlinie / Policy                                                | Einstellung / Setting             | Konform / Compliant |
|--------------------------------------------------------------------|-----------------------------------|----------------------|
| Allow users to connect remotely using Remote Desktop Services      | Enabled                           | ✅ Ja                |
| Require user authentication using Network Level Authentication     | Enabled                           | ✅ Ja                |
| Set time limit for disconnected sessions                           | 15 minutes                        | ✅ Ja                |
| Restrict access to specific groups (e.g., "Remote Users")           | Only authorized personnel         | ✅ Ja                |
| Firewall rule “Remote Desktop”                                     | Allowed only internally (LAN)     | ✅ Ja                |

---

## 📸 Beweis / Evidence

![Remote Desktop (RDP)](https://github.com/user-attachments/assets/de8085d3-5dea-4258-abc5-e18c64533896)

---

## ✅ Bewertung / Evaluation

**Deutsch:**  
Die RDP-Verbindung ist gut abgesichert. Nur autorisierte Benutzergruppen dürfen Remotezugriff erhalten, und NLA stellt sicher, dass nur authentifizierte Geräte verbunden werden.

**English:**  
RDP access is well protected. Only authorized groups can connect remotely, and NLA ensures that only authenticated devices can initiate sessions.

---

## 📌 Empfehlungen / Recommendations

- VPN erzwingen für externe RDP-Verbindungen  
- Zwei-Faktor-Authentifizierung für privilegierte Benutzer  
- Überwachung von RDP-Events via Wazuh/ELK  

---

## 📝 Audit-Fazit / Audit Conclusion

Die Remotedesktop-Richtlinie erfüllt alle Anforderungen an eine sichere Remoteverbindung laut ISO/BSI/NIST/DSGVO.

---

## 🧪 Testdurchführung / Validation

- Benutzer mit Remote-Berechtigung getestet (`ITSupport1`)  
- Zugriff über RDP intern möglich  
- Benutzer ohne Rechte erhalten Fehlermeldung  
- Nach 15 Minuten Inaktivität wurde die Sitzung getrennt













