
# 🔐 GRC-Firewall-Regeln mit pfSense

Diese Dokumentation zeigt die Umsetzung von Netzwerksegmentierung und Firewall-Regeln in einer GRC-Testumgebung mit **pfSense**. Ziel ist es, gemäß ISO 27001, BSI IT-Grundschutz, NIST 800-53 und DSGVO Sicherheitskontrollen zu simulieren und zu dokumentieren.

---

## 📁 Inhaltsverzeichnis / Table of Contents

| Zone         | Beschreibung (DE)                            | Description (EN)                         |
|--------------|-----------------------------------------------|-------------------------------------------|
| [DMZ](./rules/firewall_dmz.md)       | Web-Zugang für DMZ-Server, alles andere blockiert | Web access for DMZ servers, all else blocked |
| [HR](./rules/firewall_hr.md)         | HTTP/HTTPS erlaubt, sonst gesperrt       | HTTP/HTTPS allowed, all else denied       |
| [Finance](./rules/firewall_finance.md)| Port 3306 blockiert, eingeschränkter Datenbankzugriff | Port 3306 blocked, restricted DB access   |
| [IT](./rules/firewall_it.md)         | Volle Kontrolle, Logging aktiviert       | Full access, logging enabled              |
| [Sales](./rules/firewall_sales.md)   | Nur Web-Zugriff erlaubt                  | Only web access allowed                   |

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
