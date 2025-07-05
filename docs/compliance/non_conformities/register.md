📋 Vorlage: Nichtkonformitäten-Tabelle (Markdown)
Nr.	Titel	Standard	Beschreibung der Abweichung	Schweregrad	Maßnahme / Recommendation	Status	Beweis
NC-001	GPO Sperrbildschirm zu lang	ISO 27001 A.11.2.9	Bildschirmsperre auf 60 Min statt 15 Min eingestellt	⚠️ Major	GPO auf 900 Sek. ändern, neue Policy verteilen	Offen	Screenshot
NC-002	Kein Audit-Log bei USB	DSGVO Art. 32	USB-Schnittstellen blockiert, aber keine Überwachung protokolliert	⚠️ Minor	Audit Policy für „Removable Storage“ aktivieren	Offen	Screenshot
NC-003	Kein Alarm bei RDP-BruteForce	NIST AU-6	RDP-Angriffe erscheinen in Eventlog, aber kein Alert im SIEM	⚠️ Major	Wazuh-Regel zur RDP-Erkennung anpassen	Offen	–
NC-004	BitLocker ohne Recovery Key Prüfung	BSI SYS.2.1.A16	Kein Nachweis, dass alle Schlüssel im AD gespeichert sind	⚠️ Major	Audit-Skript zur AD-Prüfung entwickeln	Offen	–

🧪 Vorlage für Einzelfall-Report (z. B. nc_001_screenlock.md)
markdown
Copy
Edit
# Nichtkonformität NC-001 – GPO Bildschirmsperre

## 🧾 Titel
GPO-Richtlinie zur Bildschirmsperre weicht vom Standard ab

## 🔍 Beschreibung
Laut ISO 27001 A.11.2.9 müssen Bildschirme nach kurzer Inaktivität automatisch gesperrt werden. Die aktuelle Gruppenrichtlinie setzt jedoch die Inaktivitätsgrenze auf 60 Minuten, was ein Sicherheitsrisiko darstellt.

## 🧩 Referenzierte Standards
- ISO/IEC 27001:2022 – A.11.2.9
- BSI SYS.1.1.A13
- DSGVO Art. 32 Abs. 1 lit. b

## ⚠️ Bewertung
- **Schweregrad:** Major  
- **Risiko:** Unautorisierter physischer Zugriff in Abwesenheit des Nutzers  
- **Auswirkung:** Vertraulichkeit kompromittiert

## ✅ Korrekturmaßnahme
- GPO wird auf 900 Sekunden (15 Minuten) umgestellt  
- Verteilt per GPMC an alle relevanten OUs

## 📸 Beweis
![Screenshot GPO](../screenshots/non_conformities/screen_lock_900.PNG)

## 📆 Termin zur Umsetzung
- Umsetzungsziel: 07.07.2025

## 🔁 Status
🟡 Offen
