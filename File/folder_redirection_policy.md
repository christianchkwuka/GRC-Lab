
🔍 Logon Event Auditing / Anmeldeereignisse überwachen

📄 logon_event_auditing.md – Dokumentation (Deutsch 🇩🇪 + Englisch 🇬🇧)


# 🔍 Logon Event Auditing / Anmeldeereignisse überwachen

## 📌 GPO-Pfad / GPO Path  
Computer Configuration → Policies → Windows Settings → Security Settings → Advanced Audit Policy Configuration → Audit Policies → Logon/Logoff

---

## 🎯 Ziel / Purpose

**Deutsch:**  
Diese Richtlinie stellt sicher, dass alle Anmeldeversuche – sowohl erfolgreiche als auch fehlgeschlagene – protokolliert werden. Sie ist essenziell für die Erkennung unbefugter Zugriffe und die forensische Analyse gemäß ISO 27001 A.12.4 und BSI SYS.1.2.A16.

**English:**  
This policy ensures that all login attempts—both successful and failed—are logged. It is essential for detecting unauthorized access and for forensic analysis in line with ISO 27001 A.12.4 and BSI SYS.1.2.A16.

---

## 🛠️ Umsetzung / Implementation

| Ereignis / Event                     | Einstellung / Setting     |
|--------------------------------------|----------------------------|
| Audit Logon Events                   | Success, Failure           |

---

## ⚙️ Technische Details

- Aktivierung erfolgt über Gruppenrichtlinie im Modus „Erweiterte Überwachungsrichtlinie“  
- Ereignis-IDs in der Ereignisanzeige (Event Viewer):  
  - **4624**: Erfolgreiche Anmeldung  
  - **4625**: Fehlgeschlagene Anmeldung  
  - **4634**: Abmeldung  
  - **4648**: Anmeldung mit expliziten Anmeldeinformationen  

---

## 📸 Screenshot

![Event_logs](https://github.com/user-attachments/assets/d3d06f4f-a3a4-483b-87ce-0ac10095ddd8)


---

## 📚 Referenz / Reference

- **ISO/IEC 27001:2022** – A.12.4.1: Event Logging  
- **BSI Grundschutz** – SYS.1.2.A16: Protokollierung sicherheitsrelevanter Ereignisse  
- **NIST 800-53** – AU-2: Event Logging  
- **DSGVO Artikel 32** – Sicherheit der Verarbeitung

---

## ✅ Prüfung / Audit Check

**Deutsch:**  
- Werden Anmeldeversuche (Erfolg & Fehler) protokolliert?  
- Sind die entsprechenden Event-IDs in der Ereignisanzeige sichtbar?  
- Ist die Richtlinie auf alle relevanten Clients und Server angewendet?

**English:**  
- Are login attempts (success & failure) logged?  
- Are the relevant event IDs visible in Event Viewer?  
- Is the policy applied to all relevant clients and servers?

---

## 🧪 Testdurchführung / Validation

- Benutzer `AuditUser` erstellt  
- Mehrere fehlgeschlagene und erfolgreiche Anmeldungen durchgeführt  
- Event Viewer geprüft: IDs 4624 und 4625 wurden korrekt geloggt  
- Richtlinie wurde über Gruppenrichtlinie aktiviert










