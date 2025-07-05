📋 Nichtkonformitäten-Register (register.md)
markdown
Copy
Edit
# ⚠️ Nichtkonformitäten-Register (GRC-Lab)

Diese Tabelle dokumentiert alle festgestellten Abweichungen von Sicherheits- oder Datenschutzstandards (ISO 27001, DSGVO, BSI, NIST). Jede Abweichung enthält eine Bewertung, einen Maßnahmenvorschlag und wird bis zur Umsetzung nachverfolgt.

| Nr.     | Titel                               | Referenzierter Standard        | Beschreibung der Abweichung                                                                   | Schweregrad | Maßnahme / Recommendation                                     | Status | Nachweis / Beweis |
|---------|-------------------------------------|--------------------------------|-----------------------------------------------------------------------------------------------|-------------|----------------------------------------------------------------|--------|-------------------|
| NC-001  | GPO Sperrbildschirm zu lang         | ISO 27001 A.11.2.9 / DSGVO Art. 32 | GPO konfiguriert auf 60 Minuten statt empfohlener 15 Minuten                                   | ⚠️ Major    | GPO auf 900 Sek. setzen, OU-Verteilung aktualisieren           | Offen  | [📸 Screenshot](../screenshots/non_conformities/screen_lock_900.PNG) |
| NC-002  | Kein Audit-Log bei USB              | DSGVO Art. 32                  | USB-Ports gesperrt, aber keine Protokollierung/Auditing konfiguriert                         | ⚠️ Minor    | „Removable Storage Access“ Logging aktivieren                  | Offen  | [📸 Screenshot](../screenshots/non_conformities/usb_logging_missing.PNG) |
| NC-003  | Kein Alarm bei RDP-BruteForce       | NIST 800-53 AU-6               | RDP-Angriffe sichtbar in Eventlog, aber keine Alert-Auslösung in SIEM                         | ⚠️ Major    | Wazuh-Regeln zur RDP-Erkennung und Alerting aktivieren         | Offen  | –                 |
| NC-004  | BitLocker ohne Recovery Key Prüfung | BSI SYS.2.1.A16                | Kein Nachweis, ob Wiederherstellungsschlüssel im Active Directory gespeichert sind           | ⚠️ Major    | PowerShell-Skript zur Key-Überprüfung entwickeln & dokumentieren | Offen  | –                 |
🧪 Vorlage: Einzelfallbericht (z. B. nc_001_screenlock.md)
markdown
Copy
Edit
# 🚨 Nichtkonformität NC-001 – GPO Bildschirmsperre

## 🧾 Titel
GPO-Richtlinie zur Bildschirmsperre weicht von ISO 27001 ab

## 🔍 Beschreibung
Die aktuelle GPO-Richtlinie setzt die Bildschirmsperre auf 60 Minuten Inaktivität. Dies widerspricht den Sicherheitsvorgaben, laut denen nach maximal 15 Minuten automatisch gesperrt werden muss.

## 🧩 Referenzierte Standards
- ISO/IEC 27001:2022 – A.11.2.9
- BSI SYS.1.1.A13
- DSGVO Art. 32 Abs. 1 lit. b

## ⚠️ Bewertung
- **Schweregrad:** ⚠️ Major  
- **Risiko:** Physischer Zugriff durch unautorisierte Dritte bei Abwesenheit des Nutzers  
- **Auswirkung:** Vertraulichkeit von personenbezogenen und geschäftskritischen Daten gefährdet

## ✅ Empfohlene Korrekturmaßnahme
- GPO-Inaktivitätszeit auf 900 Sekunden ändern  
- Richtlinie erneut verteilen via GPMC an relevante OUs  
- Umsetzung kontrollieren via `gpresult /r`

## 📸 Beweis
![Screenshot – Bildschirm-GPO](../screenshots/non_conformities/screen_lock_900.PNG)

## 📆 Umsetzungstermin
- Geplantes Korrekturdatum: **07.07.2025**

## 🔁 Status
🟡 Offen – Nachkontrolle ausstehend
