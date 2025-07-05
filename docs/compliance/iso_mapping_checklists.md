🗂️ ISO Mapping & Kontrollübersicht (GRC-Lab)

🎯 Ziel

Diese Übersicht dient dem Nachweis, dass alle konfigurierten Gruppenrichtlinien (GPOs) und technischen Maßnahmen im GRC-Lab den Anforderungen aus ISO/IEC 27001:2022, BSI IT-Grundschutz, DSGVO und NIST 800-53 entsprechen.



🧩 Übersicht: Mapping von GPOs zu Compliance-Kontrollen

GPO-Richtlinie	ISO/IEC 27001	BSI IT-Grundschutz	DSGVO	NIST 800-53	Status	Link zum Auditbericht

Passwort-Richtlinie	A.9.2.1 / A.9.2.3	SYS.1.2.A15	Art. 32 Abs. 1 lit. b	IA-5	✅	🔗

Account Lockout Policy	A.9.4.2	SYS.1.1.A6	Art. 32 Abs. 2	AC-7	✅	🔗

USB Access Control	A.9.4.1 / A.13.2.1	ORP.4.A6	Art. 25, 32	MP-7 / AC-19	✅	🔗

Bildschirm-Sperre	A.11.2.9	SYS.1.1.A13	Art. 5, 32	AC-11	✅	🔗

Remote Desktop	A.9.2.3 / A.13.1.1	SYS.1.3.A15	Art. 32 Abs. 1 lit. a	AC-17 / SC-10	✅	🔗

Datei-/Ordnerumleitung	A.8.2.3 / A.9.4.1	CON.1.A6	Art. 5, 32	SC-12 / MP-5	✅	🔗

Logon Event Auditing	A.12.4.1 / A.12.4.3	SYS.1.5.A1 / A4	Art. 30, 32	AU-2 / AU-6	✅	🔗

Legal Login Banner	A.18.1.2	ORP.4.A12	Art. 13, 32	AC-8	✅	🔗

BitLocker Encryption	A.10.1.1 / A.10.1.2	SYS.2.1.A16	Art. 32 lit. a/c	SC-12 / SC-28 / MP-5	✅	🔗

Software Restriction Policy	A.12.6.2	SYS.1.2.A21	Art. 25, 32	SI-7 / CM-7	✅ [Auditbericht – account_lockout_policy](../account_lockout_policy.md)

📋 Kontroll-Checklisten pro Norm
✅ ISO/IEC 27001:2022 (Auswahl)
 A.9 – Zugriffskontrolle

 A.10 – Kryptografie und Verschlüsselung

 A.12 – Ereignisüberwachung (Logging)

 A.13 – Kommunikationssicherheit (Remote Access, VLANs)

 A.18 – Einhaltung gesetzlicher Anforderungen (z. B. Banner)

✅ BSI IT-Grundschutz (Kernbausteine)
 SYS.1.1 – Benutzer- und Rechteverwaltung

 SYS.1.2 – Arbeitsplatzrechner absichern

 SYS.1.3 – Server absichern (Remotezugriffe)

 SYS.1.5 – Protokollierung und Ereignisbehandlung

 ORP.4 – Organisation und Richtlinien

 CON.1 – Datensicherung

✅ DSGVO (relevante Artikel)
 Art. 5 – Grundsätze für die Verarbeitung

 Art. 13 – Informationspflicht bei Datenerhebung

 Art. 25 – Datenschutz durch Technikgestaltung

 Art. 30 – Verzeichnis von Verarbeitungstätigkeiten

 Art. 32 – Sicherheit der Verarbeitung

✅ NIST SP 800-53 (Rev. 5)
 AC – Access Control

 AU – Audit & Accountability

 IA – Identification & Authentication

 SC – System and Communications Protection

 SI – System Integrity

 CM – Configuration Management

 MP – Media Protection

