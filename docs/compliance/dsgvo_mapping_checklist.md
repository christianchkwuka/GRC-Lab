# 📜 DSGVO-Compliance im GRC-Lab

## 🎯 Ziel  

Nachweis, dass technische und organisatorische Maßnahmen (TOMs) gemäß **Art. 32 DSGVO** umgesetzt wurden.  
Zusätzlich: Dokumentation der Grundsätze gem. **Art. 5, Art. 13, Art. 25, Art. 30 DSGVO**.

---

## 📊 DSGVO Mapping-Tabelle – Umsetzung im GRC-Lab

| DSGVO-Artikel | Beschreibung                                     | Technische Maßnahme im Lab                         | Nachweis / Auditbericht                          |
|---------------|--------------------------------------------------|---------------------------------------------------|--------------------------------------------------|
| **Art. 5**    | Grundsätze der Verarbeitung                      | Nur autorisierte Benutzer, zentrale Ordnerumleitung (GPO) | [🔗 Ordnerumleitung](../audit_file_folder_redirection_policy.md) |
| **Art. 13**   | Informationspflicht bei Datenerhebung            | Interaktives Login-Banner mit Nutzungsbedingungen | [🔗 Legal Banner](../audit_legal_banner_policy.md) |
| **Art. 25**   | Datenschutz durch Technikgestaltung              | USB-Sperre, SRP, eingeschränkte Adminrechte, TPM  | [🔗 USB Access](../audit_usb_access_policy.md) |
| **Art. 30**   | Verzeichnis von Verarbeitungstätigkeiten         | Dokumentation über Mapping + Auditberichte        | [🔗 ISO Mapping](iso_mapping_checklists.md)       |
| **Art. 32**   | Sicherheit der Verarbeitung                      | Passwort-Richtlinie, BitLocker, Logging, Sperre, RDP | [🔗 Übersicht](../audit_bitlocker_encryption_policy.md) |
| **Art. 33/34**| Meldung von Datenschutzverletzungen              | SIEM-Integration mit Wazuh (in Vorbereitung)      | 🔄 Geplant (Alert-Simulation folgt)               |

---

## ✅ DSGVO-Maßnahmen-Checkliste (technisch & organisatorisch)

| Maßnahme                                         | Status | Kommentar                                                            |
|--------------------------------------------------|--------|----------------------------------------------------------------------|
| 🔒 Automatische Bildschirmsperre (Art. 5, 32)    | ✅     | Nach 15 Minuten Inaktivität aktiv                                   |
| 🔐 Datenträgerverschlüsselung (BitLocker)        | ✅     | XTS-AES 256 aktiv auf Laufwerk C:\                                  |
| 🧑‍💻 Login-Aktivitäten werden protokolliert       | ✅     | Events 4624 / 4625 + Wazuh SIEM                                      |
| 🚫 USB-Zugriff für unbekannte Geräte gesperrt    | ✅     | Nur whitelisted Geräte erlaubt                                       |
| 📂 Benutzerordner auf Server umgeleitet          | ✅     | Zentrale Speicherung + Backup                                        |
| 👤 Rechtlicher Hinweis beim Login                | ✅     | GPO-Banner zeigt DSGVO-Hinweise                                      |
| 🔐 Software Restriction Policy aktiv             | ✅     | Ausführung außerhalb `C:\Program Files\` blockiert                  |
| 👥 Rollen- und Rechtevergabe über AD             | ✅     | „Least Privilege“-Prinzip umgesetzt                                 |
| 🕵️‍♂️ SIEM-Integration (Monitoring & Alerts)     | 🟡     | Wazuh eingerichtet, Alerting wird getestet                          |

---
