# 📘 NIST SP 800-53 Rev. 5 – Mapping & Maßnahmen im GRC-Lab

## 🎯 Ziel  
Darstellung, wie zentrale GPO-Richtlinien und Sicherheitskonfigurationen im GRC-Lab mit den Kontrollfamilien von **NIST 800-53 Rev. 5** übereinstimmen – insbesondere im Kontext von Access Control, Audit, System Integrity, Cryptography und Configuration Management.

---

## 🧩 Mapping-Tabelle: GPOs zu NIST-Kontrollen

| GPO-Maßnahme                      | NIST-Kontroll-ID(s)     | Beschreibung der Kontrolle                     | Status | Nachweis / Auditbericht                        |
|----------------------------------|--------------------------|------------------------------------------------|--------|------------------------------------------------|
| Passwort-Richtlinie              | IA-5                     | Authentifizierung mit sicheren Passwörtern     | ✅     | [🔗 Bericht](../audit_password_policy.md)       |
| Account Lockout Policy           | AC-7                     | Schutz vor Brute-Force-Angriffen               | ✅     | [🔗 Bericht](../audit_account_lockout_policy.md)|
| USB-Zugriff gesperrt             | MP-7, AC-19              | Einschränkung physischer Mediennutzung         | ✅     | [🔗 Bericht](../audit_usb_access_policy.md)     |
| Bildschirm-Sperre                | AC-11                    | Automatische Sitzungsbeendigung bei Inaktivität| ✅     | [🔗 Bericht](../audit_screen_lock_policy.md)    |
| Remote Desktop Zugriff           | AC-17, SC-10             | Sichere Verwaltung des Remotezugriffs          | ✅     | [🔗 Bericht](../audit_remote_desktop_policy.md) |
| BitLocker Laufwerksverschlüsselung | SC-12, SC-28, MP-5       | Schutz ruhender Daten mit Verschlüsselung      | ✅     | [🔗 Bericht](../audit_bitlocker_encryption_policy.md) |
| Logging von Anmeldungen          | AU-2, AU-6               | Audit von Ereignissen und Logon-Aktivitäten    | ✅     | [🔗 Bericht](../audit_logon_event_auditing.md)  |
| Software Restriction Policy      | CM-7, SI-7               | Einschränkung auf genehmigte Software          | ✅     | [🔗 Bericht](../audit_software_restriction_policy.md) |
| Legal Login Banner               | AC-8                     | Hinweistext vor der Anmeldung                  | ✅     | [🔗 Bericht](../audit_legal_banner_policy.md)   |
| SIEM-Integration mit Wazuh       | AU-6, IR-5               | Zentralisierte Ereignisüberwachung             | 🟡     | 🔄 In Umsetzung                                 |

---

## ✅ Kontroll-Checkliste nach NIST-Kategorien

### 🔐 Zugriffskontrolle (AC)
- [x] AC-7 – Account Lockout  
- [x] AC-8 – System Use Notification  
- [x] AC-11 – Session Timeout  
- [x] AC-17 – Remote Access  
- [x] AC-19 – Access via External Devices  

### 📋 Audit & Accountability (AU)
- [x] AU-2 – Audit Events  
- [x] AU-6 – Audit Review, Analysis & Reporting  

### 🧑‍💻 Identität & Authentifizierung (IA)
- [x] IA-5 – Passwortanforderungen  

### 🔐 System & Kommunikationsschutz (SC)
- [x] SC-10 – Network Disconnect  
- [x] SC-12 – Encryption at Rest  
- [x] SC-28 – Protection of Stored Information  

### ⚙️ Konfigurationsmanagement (CM)
- [x] CM-7 – Least Functionality  

### 🧪 Systemintegrität (SI)
- [x] SI-7 – Software, script & macro control  

### 📦 Mediensicherheit (MP)
- [x] MP-5 – Media Transport Protection  
- [x] MP-7 – Media Use Restrictions  

---

## 📝 Empfehlungen / Nächste Schritte

- [ ] Dokumentiere geplante Alerts und Reports aus Wazuh (AU-6, IR-5)  
- [ ] Ergänze Rollenzuweisung und Benutzerverwaltung im AD (AC-2, AC-3)  
- [ ] Simuliere Vorfallmeldung (IR-4) z. B. bei Portscan oder USB-Einstecken  
- [ ] Integriere NIST-Checkliste als CSV oder Excel zum Abhaken  

---
---


