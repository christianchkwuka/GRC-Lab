
# 🚫 Software Restriction Policy / Richtlinie zur Softwareeinschränkung

## 📌 GPO-Pfad / GPO Path
`Computer Configuration → Windows Settings → Security Settings → Software Restriction Policies`

Falls noch keine Richtlinie existiert: Rechtsklick → Neue Richtlinien erstellen

---

## 🎯 Ziel / Purpose

**Deutsch:**  
Die Richtlinie zur Softwareeinschränkung schützt Systeme vor unautorisierter oder schädlicher Software. Sie verhindert, dass User Programme ausführen, die nicht ausdrücklich erlaubt sind. Die Maßnahme dient der Einhaltung von ISO 27001 A.12.6 (Technische Schwachstellen) sowie dem Schutz vor Malware.

**English:**  
Software restriction policies protect systems against unauthorized or malicious applications. They prevent users from executing unapproved software and support compliance with ISO 27001 A.12.6 (technical vulnerabilities) and malware protection.

---

## 🛠️ Umsetzung / Implementation

| Richtlinie / Policy                                        | Einstellung / Setting                            |
|------------------------------------------------------------|--------------------------------------------------|
| Security Levels                                            | Disallowed (default)                             |
| Apply to all users except local administrators             | Enabled                                          |
| Additional rules                                            | Path Rules, Hash Rules, Certificate Rules        |
| Default Paths Allowed (z. B. Program Files, Windows)       | Explicitly define allowed paths                  |
| Software Restriction Logging                               | Enabled (via Windows Event Viewer)               |

---

## ⚙️ Konfigurationsempfehlung

- 🛡️ **Standardlevel:** „Nicht erlaubt“ (Disallowed)  
- ✅ **Erlaubte Pfade:**  
  - `C:\Program Files\*`  
  - `C:\Windows\*`  
- 🚫 **Verbotene Pfade (Beispiele):**  
  - `%AppData%\*.exe`  
  - `%TEMP%\*.bat`  
- 🔍 **Optional:** Hash-Regeln für autorisierte portable Tools

---

## 📸 Screenshot

![Software Restriction GPO Einstellungen](../../assets/screenshots/software_restriction/software_restriction_policy.PNG)


---

## 📚 Referenz / Reference

- **ISO/IEC 27001:2022** – A.12.6.1: Technical vulnerability management  
- **BSI Grundschutz** – OPS.1.1.A14: Nur autorisierte Software  
- **DSGVO Artikel 32** – Sicherheit der Verarbeitung  
- **NIST SP 800-53** – SI-7: Software, Firmware, and Information Integrity

---

## ✅ Prüfung / Audit Check

| Prüffrage (Deutsch)                                           | Audit Check (English)                              |
|---------------------------------------------------------------|----------------------------------------------------|
| Ist standardmäßig keine Software ausführbar („Disallowed“)?   | Is the default level set to “Disallowed”?          |
| Sind nur explizit genehmigte Programme zugelassen?            | Are only explicitly allowed applications permitted?|
| Greift die Regel auf `%AppData%` und `%TEMP%`?                | Are rules applied to `%AppData%` and `%TEMP%`?     |
| Können Admins Tools ausführen, ohne dass User es können?      | Can admins run tools that standard users cannot?   |

---

## 🧪 Testdurchführung / Validation

- Regel mit `Disallowed` gesetzt  
- Portable `.exe` in `%AppData%` → Start blockiert  
- Hash-Regel für vertrauenswürdiges Tool (`putty.exe`) funktioniert  
- Event Viewer zeigt Blockierungsereignis (Event ID 865)
