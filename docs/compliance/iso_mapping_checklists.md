📁 ISO-Mapping & Kontroll-Übersicht – GRC Lab

🎯 Ziel

Diese Übersicht dient dazu, alle implementierten Gruppenrichtlinien (GPOs) im Windows Server GRC Lab relevanten Sicherheitsstandards wie ISO/IEC 27001:2022, BSI IT-Grundschutz, NIST 800-53 und DSGVO zuzuordnen. So wird eine nachvollziehbare Compliance-Dokumentation ermöglicht.


---

🧩 Mapping-Tabelle – GPOs zu Kontrollen

GPO-Richtlinie ISO/IEC 27001:2022 BSI IT-Grundschutz DSGVO NIST 800-53

Passwort-Richtlinie A.9.2.1 / A.9.2.3 SYS.1.2.A15 Art. 32 Abs. 1 lit. b IA-5
Account Lockout A.9.2.1 / A.9.4.2 SYS.1.1.A6 Art. 32 Abs. 2 AC-7
USB-Zugriff (Sperre) A.9.2.1 / A.9.4.1 ORP.4.A6 Art. 25 / 32 DSGVO MP-7 / AC-19
Bildschirm-Sperre A.11.2.8 SYS.1.1.A13 Art. 5 / 32 AC-11
Remote Desktop A.9.2.3 / A.13.1.1 SYS.1.3.A15 Art. 32 Abs. 1 lit. a AC-17 / SC-10
Datei-/Ordnerumleitung A.8.2.3 / A.9.4.1 CON.1.A6 Art. 5 / 32 SC-12 / MP-5
Anmeldeereignisse protokollieren A.12.4.1 / A.12.4.3 SYS.1.5.A1 / A4 Art. 30 / 32 DSGVO AU-2 / AU-6
Legal Login Banner A.18.1.2 ORP.4.A12 Art. 13 / Art. 32 DSGVO AC-8
BitLocker (Verschlüsselung) A.10.1.1 / A.10.1.2 SYS.2.1.A16 Art. 32 Abs. 1 lit. a/c SC-12 / SC-28 / MP-5
Software-Restriktion A.12.6.2 SYS.1.2.A21 Art. 25 / 32 DSGVO SI-7 / CM-7



---

📜 Compliance Checklisten (für jede Norm)

✅ ISO/IEC 27001:2022

[x] Zugangskontrollen implementiert (A.9)

[x] Kryptografie aktiviert (A.10)

[x] Benutzerverhalten überwacht (A.12)

[x] Richtlinien für mobile Geräte und Fernzugriff (A.13)

[x] Datenschutz-Hinweise und rechtliche Hinweise sichtbar (A.18)


✅ BSI IT-Grundschutz

[x] Benutzerkonten- und Rechteverwaltung (SYS.1.1)

[x] Sicherer Zugriff auf Systemressourcen (SYS.1.2)

[x] Protokollierung und Ereignisbehandlung (SYS.1.5)

[x] Kryptografischer Schutz (SYS.2.1)

[x] Organisatorische Sicherheitsmaßnahmen (ORP.4)


✅ DSGVO (deutsche Version)

[x] Artikel 25 – Datenschutz durch Technikgestaltung

[x] Artikel 32 – Sicherheit der Verarbeitung

[x] Artikel 5 – Grundsätze für die Verarbeitung personenbezogener Daten

[x] Artikel 13 – Informationspflicht bei Erhebung von Daten

[x] Artikel 30 – Verzeichnis von Verarbeitungstätigkeiten


✅ NIST 800-53 (Rev. 5)

[x] Zugriffskontrolle (AC)

[x] Audit und Rechenschaftspflicht (AU)

[x] Identität und Authentifizierung (IA)

[x] System- und Kommunikationsschutz (SC)

[x] System-Integrität (SI)



---

📁 Hinweis zur GitHub-Ablage:

Diese Datei wird unter docs/compliance/iso_mapping_checklists.md gespeichert.

Screenshots und ergänzende Beweise in:




Perfekt. Wir haben soeben das Dokument „ISO-Mapping & Kontroll-Übersicht“ erstellt. Darin enthalten:

Eine strukturierte Tabelle mit Zuordnung aller GPO-Richtlinien zu ISO 27001, BSI, DSGVO und NIST
