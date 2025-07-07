# 🛡️ Suricata Regelquellen & Globale Einstellungen (pfSense IDS/IPS)

Diese Datei dokumentiert die aktivierten Regelquellen und globalen Logging-Optionen von Suricata auf pfSense. Zusätzlich erfolgt ein Mapping auf relevante Sicherheitsstandards wie ISO 27001, BSI IT-Grundschutz, NIST SP 800-53 und DSGVO.

---

## ✅ Aktivierte Regelquellen

| Regelquelle                  | Status      | Beschreibung                                                                 |
|-----------------------------|-------------|------------------------------------------------------------------------------|
| ETOpen (Emerging Threats)   | ✅ Aktiv     | 🟢 Freie Open-Source-Regeln mit solider Basisabdeckung                       |
| Feodo Tracker (Botnet C2 IP)| ✅ Aktiv     | 🛑 Erkennt Dridex / Emotet / Heodo Botnet-Kommunikation                      |
| ETPro                        | ❌ Deaktiviert| 🔒 Kommerziell, umfassendere Abdeckung, Registrierung & Lizenz erforderlich |
| Snort Rules                 | ❌ Deaktiviert| ❌ Benötigt Registrierung oder Lizenz                                        |
| Snort GPLv2 Community Rules | ❌ Deaktiviert| 🟠 Freie Version, aber nicht aktiviert                                       |

---

## ⚙️ Globale Logging-Einstellungen

| Option                          | Status       | Erklärung                                                                 |
|--------------------------------|--------------|---------------------------------------------------------------------------|
| Update Interval                | ❌ NEVER      | ❌ Kein Regelupdate – Empfehlung: alle 12h                                |
| Update Start Time              | 🕒 00:52      | Startzeit für Updates (24h Format)                                       |
| Live Rule Swap on Update       | ✅ Aktiviert  | ✅ Verhindert Neustarts bei Regeländerungen                               |
| Log to System Log              | ✅ Aktiviert  | 📋 Logs werden in Systemlog geschrieben – zentrale Auswertung möglich     |
| GeoLite2 DB Update             | ❌ Deaktiviert| 🌍 GeoIP-Analyse nicht aktiviert – Empfehlung: aktivieren                 |
| Remove Blocked Hosts Interval  | ❌ NEVER      | ❌ Host-Blockierung bleibt dauerhaft – Empfehlung: 1 Stunde setzen        |

---

## 🧩 Mapping auf Sicherheitsstandards

| Standard             | Kontrollpunkt               | Beschreibung                                                                 |
|----------------------|-----------------------------|------------------------------------------------------------------------------|
| ISO/IEC 27001:2022   | A.12.6.1, A.13.1.1           | Schwachstellen-Management, Netzwerkschutz                                   |
| BSI IT-Grundschutz   | SYS.1.5, NET.1.4             | IDS/IPS zur Netzwerksicherung, Logging                                      |
| NIST SP 800-53 Rev.5 | CM-6, SC-7, AU-6             | Angriffserkennung, Netzwerkgrenzen, Sicherheitslog-Management               |
| DSGVO (EU GDPR)      | Art. 32                      | Sicherheit der Verarbeitung, Logging, Botnet-Erkennung                      |

---

## 💡 Empfehlungen

- ⏱ **Regelupdate aktivieren**: `Update Interval = 12 HOURS`
- 🔄 **Live Rule Swap aktivieren**: Verhindert Neustarts bei Regeländerung
- 🌍 **GeoLite2 aktivieren**: Für Länderbasierte Erkennung & GeoIP-Schutz
- 🧹 **Blocked Hosts Cleanup**: Setze auf `1 HOUR` für bessere Reaktionszeit
- 📧 **E-Mail Notifications**: Optional einrichten unter System → Advanced → Notifications

---
