📜 DSGVO-Compliance im GRC-Lab
🎯 Ziel
Nachweis, dass technische und organisatorische Maßnahmen (TOMs) gemäß Art. 32 DSGVO umgesetzt wurden. Außerdem: Dokumentation der Umsetzung von Datenschutzprinzipien (z. B. Art. 5, Art. 25, Art. 30).

🧾 DSGVO Mapping-Tabelle – GRC-Umsetzung
DSGVO-Artikel	Beschreibung (vereinfacht)	Technische Umsetzung im GRC-Lab	Nachweis / Link
Art. 5	Grundsätze (Zweckbindung, Datenminimierung etc.)	Nur autorisierte Benutzer, zentrale Ordnerumleitung, GPO	🔗
Art. 13	Informationspflicht bei Datenerhebung	Legal Banner mit Hinweisen	🔗
Art. 25	Datenschutz durch Technikgestaltung	USB-Sperre, SRP, eingeschränkte GPO-Rechte, TPM-Pflicht	🔗
Art. 30	Verzeichnis von Verarbeitungstätigkeiten	Dokumentation erfolgt über Mapping-Tabellen & Auditberichte	ISO Mapping
Art. 32	Sicherheit der Verarbeitung	Passwörter, Verschlüsselung, Logging, Bildschirm-Sperre, RDP	🔗
Art. 33/34	Meldung bei Datenschutzverstoß / Benachrichtigung	Noch offen (Simulation via SIEM/Wazuh geplant)	–

✅ DSGVO-Maßnahmen-Checkliste (Praxisansicht)
Maßnahme	GRC-Lab Status	Kommentar
Bildschirmsperre (Vertraulichkeit)	✅	Automatische Sperre nach 15 Minuten aktiv
Datenverschlüsselung (BitLocker)	✅	C:\ via BitLocker XTS-AES 256 verschlüsselt
Protokollierung von Logins	✅	Event ID 4624 / 4625 + Wazuh-Integration
Zugangsbeschränkung über Gruppenrichtlinien	✅	Rollenbasierte GPOs / RDP nur intern
USB-Schnittstellen blockiert	✅	Nur genehmigte Geräte erlaubt
SRP / Software Restrictions	✅	Ausführung außerhalb C:\Program Files blockiert
Rechtlicher Anmeldehinweis (Art. 13 DSGVO)	✅	Interaktives Banner mit Nutzungsbedingungen
Backup der Benutzerdateien	✅	Umgeleitet auf File-Server mit Sicherung
Rollen- und Rechtemanagement in AD	✅	„Least Privilege“ via OU / Gruppen
Technisches Monitoring (SIEM via Wazuh)	🟡 In Arbeit	Teilweise eingerichtet, Alerts folgen noch
