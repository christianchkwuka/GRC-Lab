
# 🔐 GRC-Firewall-Regeln mit pfSense

Diese Dokumentation zeigt die Umsetzung von Netzwerksegmentierung und Firewall-Regeln in einer GRC-Testumgebung mit **pfSense**. Ziel ist es, gemäß ISO 27001, BSI IT-Grundschutz, NIST 800-53 und DSGVO Sicherheitskontrollen zu simulieren und zu dokumentieren.

---

## 📁 Inhaltsverzeichnis / Table of Contents

| Zone         | Beschreibung (DE)                            | Description (EN)                         |
|--------------|-----------------------------------------------|-------------------------------------------|
| ![dmz_firewall_rule_2](https://github.com/user-attachments/assets/967508c3-0e16-4096-bb78-17ac95c3fc4e)
       | Web-Zugang für DMZ-Server, alles andere blockiert | Web access for DMZ servers, all else blocked |
| ![firewall_hr](https://github.com/user-attachments/assets/ba88ee1f-8364-4f74-8c79-8c332ed4ba58)
         | HTTP/HTTPS erlaubt, sonst gesperrt       | HTTP/HTTPS allowed, all else denied       |
| ![firewall_financepng](https://github.com/user-attachments/assets/b52fae03-f152-483a-98d7-ca5084ab0f01)
| Port 3306 blockiert, eingeschränkter Datenbankzugriff | Port 3306 blocked, restricted DB access   |
| ![firewall_it](https://github.com/user-attachments/assets/77686b8e-e567-4923-a63a-637a40d2f0f8)
         | Volle Kontrolle, Logging aktiviert       | Full access, logging enabled              |
| ![firewall_sales](https://github.com/user-attachments/assets/466e64af-edc1-46bc-9640-84de0a241648)
   | Nur Web-Zugriff erlaubt                  | Only web access allowed                   |

---







## 🎯 Ziel / Goal

Implementierung einer standardkonformen Netzwerksegmentierung und Zugriffskontrolle mit:

- 🔐 **Firewall-Regeln nach dem "Default Deny"-Prinzip**
- 📚 **Mapping auf relevante Sicherheitsstandards**
- 📊 **Beobachtung & Logging mit Wazuh SIEM**
- 🧪 **Tests mit Kali Linux (z. B. Portscan, DNS Tunneling)**

---

## 📑 Sicherheits-Standards Mapping

| Standard         | Fokus                              | Umsetzung in diesem Projekt                    |
|------------------|-------------------------------------|------------------------------------------------|
| **ISO 27001:2022** | A.13 – Netzwerksicherheit           | Segmentierung, Zugriffskontrolle, Logging      |
| **BSI IT-Grundschutz** | OPS.1.1.1 / SYS.1.3.1              | Firewall-Regeln, Netzzonierung, DMZ            |
| **NIST SP 800-53** | SC-7, AC-4, SI-4                    | Boundary Protection, Access Control, Audit     |
| **DSGVO**         | Art. 25, Art. 32                    | Datenminimierung, Sicherheit der Verarbeitung  |

---

## 🛠 Tools im Einsatz

- **pfSense** → Firewall- und VLAN-Management
- **Kali Linux** → Angriffssimulation
- **Ubuntu (Wazuh)** → SIEM/Logging
- **Windows Server** → Zielsysteme für Compliance-Tests

---

## 🔍 Beispiel: Firewall-Dokumentation mit Mapping

📄 Beispiel-Datei: `firewall_sales.md`

```markdown
## SALES Firewall-Regel

**Ziel:** Nur Webzugriff (HTTP/HTTPS) für Sales

- Interface: SALES
- Protokoll: TCP
- Source: SALES Subnet
- Destination: Any
- Ports: 80-443 (HTTP/HTTPS)

### ✅ Mapping:

| Standard     | Regel                         |
|--------------|-------------------------------|
| ISO 27001    | A.13.1.1 - Netzwerksteuerung   |
| BSI          | OPS.1.1.1.A8 - Ausgehende Filterung |
| NIST         | SC-7 - Boundary Protection     |
| DSGVO        | Art. 32 – Sicherheit der Verarbeitung |
