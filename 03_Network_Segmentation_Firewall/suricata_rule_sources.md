🧠 Suricata Regelquellen & Globale Einstellungen (pfSense IDS/IPS)

📦 Aktivierte Regelquellen

Regelquelle

Status

Beschreibung

ETOpen (Emerging Threats)

✅ Aktiviert

Freie Open-Source-Regeln, gute Basisabdeckung

Feodo Tracker (Botnet C2 IPs)

✅ Aktiviert

Erkennt Dridex/Emotet/Heodo Botnet-Kommunikation

ETPro

❌ Deaktiviert

Kommerzielle, umfangreiche Regelbasis

Snort Rules

❌ Deaktiviert

Erfordert Anmeldung bei Snort

Snort GPLv2 Community Rules

❌ Deaktiviert

Alternative zu ETOpen, optional

⚙️ Logging & Update-Einstellungen

Einstellung

Wert / Status

Erklärung

Update Interval

NEVER (❌)

Auto-Updates deaktiviert (Empfohlen: 12 HOURS)

Live Rule Swap on Update

✅ Aktiviert

Regeländerungen ohne Suricata-Neustart

GeoLite2 DB Update

❌ Deaktiviert

GeoIP-Funktion nicht aktiviert

Log to System Log

✅ Aktiviert

Logs werden an pfSense-Systemlog gesendet

Remove Blocked Hosts Interval

NEVER

Hosts bleiben dauerhaft blockiert

Keep Settings After Deinstall

✅ Aktiviert

Konfiguration wird gespeichert

Clear Blocked Hosts After Deinstall

✅ Aktiviert

Blockierte Hosts werden gelöscht

✅ Empfehlungen für GRC-konforme Konfiguration

Maßnahme

Ziel (Framework-Mapping)

➕ Update-Intervall auf 12 Stunden setzen

ISO 27001 A.12.6.1 (Technisches Schwachstellenmanagement)

📥 GeoLite2 DB aktivieren

NIST AC-4 (Informationsflusskontrolle)

📊 Eve JSON-Log aktivieren (für Wazuh/SIEM)

BSI SYS.1.5.A6 (Zentrale Auswertung)

📧 E-Mail-Benachrichtigung aktivieren

ISO 27001 A.16.1.2 (Kommunikation bei Ereignissen)

🧾 Mapping auf Sicherheitsstandards

✔️ ISO/IEC 27001:2022

A.12.6.1: Schwachstellen-Management

A.13.1.1 / A.13.1.2: Netzwerksicherheit & Dienstabsicherung

A.16.1.2: Informationssicherheitsereignisse melden

✔️ BSI IT-Grundschutz (KAP. SYS.1.5 & DET.4)

SYS.1.5.A6: Protokollierung aktivieren & auswerten

DET.4.2.A1: Einsatz von IDS/IPS-Systemen

✔️ NIST SP 800-53 (Rev. 5)

CM-7: Funktionsminimierung

AC-4: Kontrolle von Informationsflüssen

SI-4: Erkennung von Vorfällen

✔️ DSGVO (EU-DSGVO Art. 32)

Sicherheit bei der Verarbeitung personenbezogener Daten

📁 GitHub-Dokumentationsstruktur

Empfohlene Datei:

suricata/suricata_rule_sources.md

Screenshot-Ordner:

suricata/screenshots/global_settings_rules_update.png

✅ English Summary (for bilingual GitHub use)

ETOpen and Feodo Tracker rules are enabled – a strong combination.

Automatic rule updates are disabled – change to every 12 hours.

Logs are being sent to the system log – integration with SIEM (e.g., Wazuh) possible.

Global logging and update settings match ISO 27001, BSI, NIST and GDPR expectations.
