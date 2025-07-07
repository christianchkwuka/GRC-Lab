📄 1. README.md (Deutsch & Englisch)
markdown
Copy
Edit
# 🛡️ GRC-Lab: Netzwerksegmentierung & IDS/IPS Test mit pfSense + Suricata

## 🎯 Ziel / Objective
Dieses Modul simuliert Angriffe im internen Netzwerk, um zu überprüfen, ob die pfSense-Firewall mit Suricata als IDS/IPS diese Angriffe erkennen und blockieren kann.

This module simulates internal network attacks to verify whether the pfSense firewall with Suricata IDS/IPS can detect and block malicious activity.

---

## 🔍 Inhalt / Contents

| Thema / Topic                               | Beschreibung / Description                                     |
|---------------------------------------------|----------------------------------------------------------------|
| 🔧 Netzwerkscan mit Nmap                    | Port-Scanning-Test von Kali auf pfSense                        |
| 🕵️ User-Agent Manipulation (curl Nikto)     | HTTP Request mit bösartigem Scanner-Agent                      |
| 🔐 Brute-Force Simulation (hydra)           | Test mit falschem Wordlist-Pfad, zeigt Logging-Funktion        |
| 📊 IDS/IPS Detection                        | Suricata meldet Alerts in der pfSense-Weboberfläche            |
| 🔗 Mapping zu ISO 27001 / BSI / NIST       | Zuordnung der Sicherheitsmaßnahmen zu Standards                |

---

## 📸 Screenshots

| Beschreibung                           | Datei                           |
|----------------------------------------|----------------------------------|
| 🔍 Nmap-Portscan auf pfSense          | `nmap_scan_pfsense.png`          |
| 🌐 curl mit "Nikto"-User-Agent        | `curl_nikto_useragent.png`       |
| 🔐 hydra Brute-Force Versuch          | `hydra_bruteforce_fail.png`      |
| ⚠️ Suricata Alert: Nmap erkannt       | `suricata_alert_nmap.png`        |
| ⚠️ Suricata Alert: User-Agent erkannt | `suricata_alert_nikto.png`       |
| 📊 Alle Alerts in Suricata GUI        | `suricata_all_alerts_gui.png`    |

---

## ✅ Standards & Mapping

📄 Siehe Datei `iso_bsi_nist_mapping.xlsx` im Ordner `compliance_mapping/`.

---

## 🧰 Tools verwendet / Tools Used

- **Kali Linux:** nmap, curl, hydra  
- **pfSense:** Firewall + Suricata (Inline IPS)  
- **Suricata:** IDS/IPS mit ET Open Rules  
- **Browser:** Firefox für pfSense GUI Zugriff  

---

## 🧠 Lernergebnis / Learning Outcome

✅ Praktischer Nachweis zur Umsetzung von Netzwerksicherheitsrichtlinien gemäß ISO 27001 A.13, BSI IT-Grundschutz OPS.1.1.1 und NIST SP 800-53 SC-7 / SI-4.

---

> 📁 Alle Screenshots sind im Ordner `/screenshots/` abgelegt und in den Markdown-Dateien korrekt referen
