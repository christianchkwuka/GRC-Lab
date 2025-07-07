
# 🧠 Suricata Regelquellen & Globale Einstellungen

## Aktivierte Regelquellen
- ✅ Emerging Threats Open
- ✅ Feodo Tracker Botnet IPs

## Logging & Update-Verhalten
- 📡 Regelupdate: Deaktiviert (empfohlen: alle 12 Stunden)
- 📥 Systemlog-Aktivierung: ✅
- 📌 Live Rule Swap: ✅

## Mapping auf Sicherheitsstandards
- **ISO 27001 A.12.6.1**: Management technischer Schwachstellen
- **BSI SYS.1.5.A6**: Protokollierung und Auswertung sicherheitsrelevanter Ereignisse
- **NIST CM-3 / CM-6**: Regelmäßige Updates, Sicherheitskonfigurationen

## Empfehlungen
- Aktiviere automatische Regelupdates
- Aktiviere GeoLite2 zur Ländererkennung
- Integriere JSON-Logging zur SIEM-Auswertung mit Wazuh
