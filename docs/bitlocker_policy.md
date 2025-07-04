
# 🔒 BitLocker Encryption Policy / BitLocker-Verschlüsselungsrichtlinie

## 📌 GPO-Pfad / GPO Path
`Computer Configuration → Administrative Templates → Windows Components → BitLocker Drive Encryption`

---

## 🎯 Ziel / Purpose

**Deutsch:**  
BitLocker schützt Daten auf Laufwerken durch Verschlüsselung. Dies verhindert unbefugten Zugriff bei Verlust oder Diebstahl des Geräts. Die Maßnahme erfüllt Anforderungen an Datenschutz und Zugriffskontrolle gemäß ISO 27001 A.10 und DSGVO Artikel 32.

**English:**  
BitLocker secures drive data through encryption, preventing unauthorized access in case of device loss or theft. This measure supports data protection and access control under ISO 27001 A.10 and GDPR Article 32.

---

## 🛠️ Umsetzung / Implementation

| Richtlinie / Policy                                                           | Einstellung / Setting                           |
|--------------------------------------------------------------------------------|--------------------------------------------------|
| Require additional authentication at startup                                  | Enabled (TPM + PIN or TPM + USB)                |
| Choose how BitLocker-protected OS drives can be recovered                    | Save recovery information to AD DS              |
| Configure use of passwords for removable data drives                         | Enabled – Password must be at least 12 characters |
| Do not allow write access to removable drives not protected by BitLocker     | Enabled                                         |
| Allow enhanced PINs for startup                                               | Enabled                                         |

---

## ⚙️ Einstellungen & Hinweise

- **TPM aktivieren:** Trusted Platform Module erforderlich  
- **PIN-Richtlinie:** Mindestlänge 6–8 Zeichen, Komplexität optional  
- **Recovery-Schlüssel:** Sicher in Active Directory oder offline gespeichert  
- **Entfernbare Medien:** Zwingende Verschlüsselung aktivieren  

---

## 📸 Screenshot


![Bitlocker](https://github.com/user-attachments/assets/be8ec313-e879-46cb-a7a4-f438cc7392c0)


---

## 📚 Referenz / Reference

- **ISO/IEC 27001:2022** – A.10.1: Cryptographic controls  
- **BSI Grundschutz** – OPS.1.2.A21: Festplattenverschlüsselung  
- **DSGVO Artikel 32** – Sicherheit der Verarbeitung  
- **NIST SP 800-111** – Guide to Storage Encryption Technologies

---

## ✅ Prüfung / Audit Check

| Prüffrage (Deutsch)                                                | Audit Check (English)                                 |
|--------------------------------------------------------------------|--------------------------------------------------------|
| Ist BitLocker auf allen Laufwerken aktiviert?                     | Is BitLocker enabled on all drives?                   |
| Werden sichere PINs oder USB-Keys verwendet?                      | Are secure PINs or USB keys used at startup?          |
| Sind Recovery Keys sicher gespeichert (z. B. in AD)?               | Are recovery keys securely stored (e.g., in AD)?      |
| Ist BitLocker für USB-Sticks/Wechseldatenträger verpflichtend?    | Is BitLocker mandatory for USB/removable devices?     |

---

## 🧪 Testdurchführung / Validation

- BitLocker auf Systemlaufwerk aktiviert (TPM + PIN getestet)  
- USB-Stick eingeführt → Verschlüsselung erforderlich  
- GPO wirksam → Keine Schreibrechte ohne BitLocker  
- Recovery-Key erfolgreich exportiert & dokumentiert
