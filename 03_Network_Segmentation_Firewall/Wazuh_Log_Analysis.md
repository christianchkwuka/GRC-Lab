
🔥 Firewall Log Monitoring & Alert Analysis (pfSense + Wazuh)

🔥 Firewall-Protokollüberwachung & Alarmanalyse (pfSense + Wazuh)

📅 Date / Datum: 09.07.2025
🧰 Tools: pfSense, Suricata (IPS Mode), Wazuh Dashboard, Nmap (Kali Linux)

🛡 Objective / Ziel: Centralized monitoring of firewall logs and detection of security threats in GRC lab / Zentrale Überwachung von Firewall-Protokollen und Erkennung von Sicherheitsbedrohungen im GRC-Labor

🎯 Objective / Zielsetzung

EN:
This analysis focuses on monitoring pfSense firewall and Suricata alerts via Wazuh to detect and assess security threats and ensure compliance with ISO 27001, NIST 800-53, BSI, and GDPR.

DE:
Diese Analyse konzentriert sich auf die Überwachung von pfSense-Firewall- und Suricata-Alarmen über Wazuh, um Sicherheitsbedrohungen zu erkennen und die Einhaltung von ISO 27001, NIST 800-53, BSI und DSGVO sicherzustellen.

🔍 Log Sources & Configuration / Logquellen & Konfiguration

Component / Komponente	Description / Beschreibung
pfSense	Firewall with logging to /var/log/filter.log
Suricata	IPS running in Inline mode on LAN interface
Wazuh	SIEM platform for log analysis and alert correlation
Log Transfer / Log-Übertragung	Syslog via UDP port 514 to Wazuh manager

📊 Sample Alerts / Beispiel-Alerts
{
  "data.srcip": "192.168.56.20",
  "data.dstip": "192.168.56.100",
  "data.action": "block",
  "rule.description": "Multiple pfSense firewall blocks events from same source.",
  "rule.level": 10,
  "rule.groups": ["pfSense", "firewall"],
  "decoder.name": "pf",
  "location": "/var/log/syslog",
  "timestamp": "2025-07-09T13:01:12.000Z"
}
📁 Field Explanation / Felderklärung

Field / Feld	Meaning / Bedeutung
data.srcip	Attacker's IP (Kali) / IP des Angreifers
data.dstip	Destination IP (pfSense) / Zieladresse
data.action	Action taken (e.g., block) / Aktion (z. B. blockieren)
rule.description	Description of the event / Ereignisbeschreibung
rule.level	Severity level (1–15) / Kritikalität (1–15)
decoder.name	Log source decoder (pf = pfSense) / Logquelle
location	Log file path / Logdateipfad

🧩 Standards Mapping / Zuordnung zu Standards

Standard	Control Reference / Kontrollreferenz
ISO/IEC 27001:2022	A.5.25 (Logging), A.5.16 (Monitoring), A.8.16 (Network Protection)
NIST 800-53 Rev.5	AU-6, SC-7, SI-4
BSI IT-Grundschutz	SYS.1.1.A9, DET.3
GDPR / DSGVO	Art. 32 (Security), Art. 33 (Incident Reporting)

📌 Visualisation Tips / Tipps zur Visualisierung
EN:

Use Wazuh Discover to filter by rule.level >= 10 for critical alerts.

Use data.srcip to see which IPs trigger the most blocks.

Build time-based dashboards using the timestamp field.

DE:

Nutze Wazuh Discover und filtere nach rule.level >= 10 für kritische Alerts.

Verwende data.srcip, um häufige Angriffsquellen zu identifizieren.

Baue Zeitverlauf-Diagramme mit dem Feld timestamp.

🧪 Conclusion / Fazit

EN:
With Wazuh and pfSense integration, we have full visibility into blocked traffic, attack patterns, and compliance-critical events. All logs are centralized and searchable.

DE:
Durch die Integration von Wazuh und pfSense erhalten wir vollständige Transparenz über blockierte Verbindungen, Angriffsmuster und compliance-relevante Ereignisse. Alle Logs sind zentralisiert und durchsuchbar.

