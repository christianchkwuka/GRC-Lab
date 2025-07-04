
💻 Screen Lock / Bildschirmsperre (Session Lock Policy)

# 🔒 Bildschirm-Sperrzeit / Screen Lock Policy

## 📌 GPO-Pfad / GPO Path  
Computer Configuration → Policies → Windows Settings → Security Settings → Local Policies → Security Options  
➡️ "Interactive logon: Machine inactivity limit"

---

## 🎯 Ziel / Purpose

**Deutsch:**  
Die Bildschirm-Sperrzeit dient dem Schutz verlassener Arbeitsplätze vor unautorisiertem Zugriff. Sie ist eine zentrale Maßnahme gemäß ISO 27001 A.11.2.9 und BSI SYS.1.2.A10.

**English:**  
Screen lock enforces automatic session locking after inactivity, preventing unauthorized access to unattended systems. It's a core requirement under ISO 27001 A.11.2.9 and BSI SYS.1.2.A10.

---

## 🛠️ Umsetzung / Implementation

| Richtlinie / Policy                             | Einstellung / Setting  |
|-------------------------------------------------|-------------------------|
| Interactive logon: Machine inactivity limit     | 900 Sekunden (15 Min.)  |

---

## 🖼️ Screenshot  

![Bildschirmsperre](https://github.com/user-attachments/assets/8c0c5e6a-f440-4325-89d0-5222caf76f54)


---

## 📚 Referenz / Reference

- **ISO/IEC 27001:2022** – A.11.2.9: Unattended User Equipment  
- **BSI Grundschutz** – SYS.1.2.A10: Automatische Sperrung von Terminals  
- **DSGVO (Art. 32)** – Sicherheit der Verarbeitung  
- **NIST 800-53 – AC-11: Session Lock**

---

## ✅ Prüfung / Audit Check

**Deutsch:**  
- Wurde die Inaktivitätsgrenze in der Gruppenrichtlinie gesetzt?  
- Sperrt sich der Bildschirm automatisch nach 15 Minuten?  
- Test auf mehreren Domänencomputern durchgeführt?

**English:**  
- Was inactivity timeout configured via GPO?  
- Does the machine lock after 15 minutes of no input?  
- Was this confirmed on multiple domain computers?

---

## 🧪 Testdurchführung / Validation

- Richtlinie mit `gpupdate /force` angewendet  
- Benutzerkonto angemeldet, 15 Minuten inaktiv gelassen  
- System sperrt automatisch → Erfolg  
- Validierung mit `gpresult` durchgeführt















