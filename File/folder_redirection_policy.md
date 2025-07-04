
📁 Ordnerumleitung / Folder Redirection Policy

📌 GPO-Pfad / GPO Path
User Configuration → Policies → Windows Settings → Folder Redirection → Documents / Desktop / Pictures / etc.

🎯 Ziel / Purpose
Deutsch:
Die Ordnerumleitung ermöglicht die Speicherung von Benutzerdateien (z. B. Dokumente, Desktop) auf einem zentralen Server anstatt lokal auf dem Client. Das erleichtert Backups, erhöht die Datensicherheit und erfüllt Anforderungen aus ISO 27001 (A.12.3).

English:
Folder redirection allows user data (e.g. Documents, Desktop) to be stored on a central server rather than on the local device. This supports backup strategies, improves data security, and complies with ISO 27001 (A.12.3).

🛠️ Umsetzung / Implementation
Richtlinie / Policy	Einstellung / Setting
Documents folder redirection	Basic – Redirect to the following location
Target folder location	\Server\Users%USERNAME%\Documents
Grant user exclusive rights to Documents	Enabled
Move contents of Documents to the new location	Enabled
Policy removal behavior	Redirect the folder back to the local userprofile
Apply redirection policy to Windows 2000/XP/7 and later	Enabled

🔐 Sicherheitseinstellungen / Security Controls
Nur autorisierte Benutzer haben Zugriff auf ihren Ordner

Freigabe mit NTFS-Berechtigungen: Nur Besitzer + Admins

Zentralisierte Speicherung für bessere Backup-/Recovery-Prozesse

📸 Screenshot
markdown
Copy
Edit
![Folder Redirection GPO Settings](../../assets/screenshots/folder_redirection_policy/folder_redirection_config.PNG)
📚 Referenzen / References
ISO/IEC 27001:2022 – A.12.3.1: Information backup

BSI Grundschutz – OPS.1.2.A5: Zentrale Datenspeicherung

NIST 800-53 – CP-9: Information System Backup

DSGVO Artikel 32 – Sicherheit der Verarbeitung

✅ Prüfung / Audit Check
Deutsch:

Wird der Dokumente-Ordner erfolgreich auf den zentralen Pfad \Server\Users%USERNAME% umgeleitet?

Haben nur berechtigte Benutzer Zugriff?

Funktioniert die Rückführung bei Richtlinienentfernung korrekt?

English:

Is the Documents folder redirected to \Server\Users%USERNAME%?

Do only authorized users have access?

Does the rollback work correctly when the policy is removed?

🧪 Testdurchführung / Validation
Benutzer meldet sich an → „Dokumente“ zeigt \Server\Users\TestUser

Datei im Umleitungsordner erstellt → erscheint auf Server

GPO entfernt → Ordner kehrt lokal zurück



