ier ist die überarbeitete Markdown-Version im professionellen GitHub-Stil für deine Datei Wazuh_Log_Analysis.md:

markdown
Copy
Edit
# 📊 GRC Firewall Log Monitoring mit pfSense, Suricata und Wazuh  
**GRC Firewall Log Monitoring with pfSense, Suricata and Wazuh**

---

## 🧾 Beschreibung (Description)

**DE:**  
Diese Dokumentation beschreibt die zentrale Überwachung von pfSense-Firewall- und Suricata-IDS/IPS-Logs mithilfe von Wazuh. Ziel ist es, Sicherheitsereignisse zu erkennen, zu korrelieren und zu dokumentieren – im Einklang mit ISO 27001, NIST 800-53, BSI-Grundschutz und DSGVO.

**EN:**  
This documentation describes how to centrally monitor pfSense firewall and Suricata IDS/IPS logs using Wazuh. The goal is to detect, correlate, and document security events in accordance with ISO 27001, NIST 800-53, BSI-Grundschutz, and GDPR.

---

## 🎯 Ziel dieses Abschnitts  
**Goal of this Section**

- 🔒 Erkennung von geblockten Verbindungen und Angriffen  
- 🧩 Mapping zu Sicherheitsstandards (ISO, NIST, BSI, DSGVO)  
- 📊 Visualisierung von Firewall- und IDS-Logs  
- 📎 Beweisführung für Audits und Risikobewertungen  

---

## 🧰 Infrastrukturüberblick / Lab Setup

| Komponente        | Funktion / Zweck                      |
|------------------|----------------------------------------|
| pfSense           | Firewall, Suricata IDS/IPS aktiviert  |
| Suricata (LAN)    | Inline IPS, ET-Open & abuse.ch Regeln |
| Kali Linux        | Angreifer (z. B. mit nmap)            |
| Ubuntu (Wazuh)    | SIEM-Manager und Dashboard             |

---

## 🗂️ Logquellen & Konfiguration  
**Log Sources & Configuration**

| Quelle | Beschreibung / Description |
|--------|----------------------------|
| `/var/log/filter.log` | pfSense Firewall-Log |
| `/var/log/syslog`     | Syslog inkl. pfSense-Logs |
| UDP 514                | Logübertragung an Wazuh |

---

## 🚨 Beispiel-Alert / Sample Alert (Wazuh Discover)

```json
{
  "data.srcip": "192.168.56.20",
  "data.dstip": "192.168.56.100",
  "data.action": "block",
  "rule.description": "Multiple pfSense firewall blocks events from same source.",
  "rule.level": 10,
  "decoder.name": "pf",
  "location": "/var/log/syslog",
  "timestamp": "2025-07-09T13:01:12.000Z"
}


![wazuh_log](https://github.com/user-attachments/assets/a0243f38-eb89-4791-a5d7-4307e61438e0)

