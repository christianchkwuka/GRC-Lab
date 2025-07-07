Empfehlungen

🔐 Suricata Regelquellen & Globale Einstellungen (pfSense IDS/IPS)

Suricata Rule Sources & Global Settings (pfSense IDS/IPS)

✅ Aktivierte Regelquellen / Enabled Rule Sources
Regelquelle / Rule Source	Status	Beschreibung / Description
ETOpen (Emerging Threats Open)	✅ Aktiviert	🟢 Freie Open-Source-Regeln, gute Basisabdeckung
🟢 Good free base coverage of threats
Feodo Tracker (Botnet C2 IPs)	✅ Aktiviert	🛑 Erkennt Dridex / Emotet / Heodo C2-Kommunikation
🛑 Detects Botnet C2 connections
ETPro	❌ Deaktiviert	🔒 Kommerziell, umfassende Regeln
🔒 Commercial version with enhanced detection
Snort / GPLv2 / Registered Rules	❌ Deaktiviert	🔒 Benötigt Registrierung / Lizenz
🔒 Requires Snort account / license

📦 Globale Einstellungen / Global Logging Settings

Einstellung / Setting	Status	Empfehlung / Recommendation
Regelupdate (Update Interval)	❌ NEVER	⛔ Sollte auf 12 HOURS gesetzt werden für automatisierte Updates
Live Rule Swap	✅ Aktiviert	✅ Verhindert Neustarts beim Regelupdate (Live Reload)
System Log	✅ Aktiviert	✅ Logs gehen in system.log – zentrale Auswertung möglich
GeoLite2 IP DB	❌ Deaktiviert	🔍 Aktivieren für Länderbasierte Regeln (Geo-IP Analyse)
Entferne geblockte Hosts (Remove Blocked)	❌ NEVER	🛠 Setze auf 1 HOUR für bessere Reaktionszeit

🧭 Mapping auf Sicherheitsstandards / Mapping to Security Standards
Framework	Referenz / Control	Beschreibung / Description
ISO/IEC 27001:2022	A.12.6.1 – Schwachstellen-Management	Regel-Updates = technisches Schutzmanagement
A.13.1.1 – Netzwerkschutz	IDS/IPS zur Netzwerksegment-Absicherung
BSI Grundschutz	SYS.1.5.A6 – Logauswertung	Suricata-Logs zur Angriffserkennung
NIST SP 800-53	CM-6 / CM-7 – Konfiguration & Dienste	Nur benötigte Regeln/Dienste aktivieren
SI-4 – System Monitoring	IDS-Protokolle als Teil des Monitorings
DSGVO / GDPR	Art. 32 – Sicherheit der Verarbeitung	Logging, Botnet-Blocking schützt personenbezogene Daten

💡 Empfehlungen / Final Recommendations
📥 Regelupdate aktivieren: Update Interval → 12 HOURS

🌍 GeoLite2 aktivieren, falls Geobasierte Regeln benötigt werden

📊 Eve-JSON Logging aktivieren, für Integration in Wazuh / SIEM

📬 Benachrichtigungen (E-Mail, Telegram) einrichten unter System → Advanced

