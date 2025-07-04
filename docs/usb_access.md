
# 🚫 USB-Zugriffskontrolle / USB Access Control

## 📌 GPO-Pfad / GPO Path  
Computer Configuration → Policies → Administrative Templates → System → Removable Storage Access

---

## 🎯 Ziel / Purpose

**Deutsch:**  
Diese Richtlinie verhindert die Verwendung externer USB-Datenträger, um Datenabfluss, Malware-Einschleusung und unautorisierte Nutzung zu vermeiden. Sie ist relevant für ISO 27001 A.13 und DSGVO Art. 32.

**English:**  
This policy prevents the use of external USB storage devices to reduce the risk of data leakage, malware infection, or unauthorized access. It supports ISO 27001 A.13 and GDPR Article 32.

---

## 🛠️ Umsetzung / Implementation

| Richtlinie / Policy                                                  | Einstellung / Setting  |
|----------------------------------------------------------------------|--------------------------|
| All Removable Storage classes: Deny all access                      | Enabled                  |
| Removable Disks: Deny execute access                                | Enabled                  |
| Removable Disks: Deny read access                                   | Enabled                  |
| Removable Disks: Deny write access                                  | Enabled                  |

---

## 🖼️ Screenshot  

![USB-Zugriffskontrolle](https://github.com/user-attachments/assets/6601271c-cd4b-4eda-b18b-410aee47fe95)

---

## 📚 Referenz / Reference

- **ISO/IEC 27001:2022** – A.13.2.1: Information Transfer Policies  
- **BSI Grundschutz** – SYS.1.2.A18: Nutzung externer Geräte  
- **DSGVO (Artikel 32)** – Sicherheit der Verarbeitung  
- **NIST 800-53 – AC-19: Access Control for Peripheral Devices**

---

## ✅ Prüfung / Audit Check

**Deutsch:**  
- Wurde die USB-Nutzung in der Gruppenrichtlinie deaktiviert?  
- Können Benutzer keine USB-Sticks mehr lesen, schreiben oder ausführen?  
- Wurde dies auf Clients überprüft?

**English:**  
- Was USB usage disabled via GPO?  
- Are users unable to read, write or execute from USB drives?  
- Was this verified on endpoints?

---

## 🧪 Testdurchführung / Validation

- USB-Stick an Client-PC angeschlossen  
- Zugriffstest auf Lesbarkeit → verweigert  
- Zugriffstest auf Schreibbarkeit → verweigert  
- Überprüfung über `gpresult /h report.html` → Richtlinie aktiv



