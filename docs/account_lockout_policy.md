
# 🚫 Account Lockout Policy / Kontosperrungsrichtlinie

## 📌 GPO-Pfad / GPO Path
Computer Configuration → Policies → Windows Settings → Security Settings → Account Policies → Account Lockout Policy

---

## 🎯 Ziel / Purpose

**Deutsch:**  
Diese Richtlinie soll automatisierte Angriffe (z. B. Brute-Force) verhindern, indem Benutzerkonten nach mehreren fehlerhaften Anmeldeversuchen gesperrt werden.

**English:**  
This policy is intended to prevent automated attacks (e.g., brute-force) by locking user accounts after multiple failed login attempts.

---

## 🛠️ Umsetzung / Implementation

| Richtlinie / Policy                          | Einstellung / Setting    |
|----------------------------------------------|--------------------------|
| Account lockout threshold                    | 5 invalid attempts       |
| Account lockout duration                     | 15 minutes               |
| Reset account lockout counter after          | 15 minutes               |

---

## 📸 Screenshot

👉 Füge deinen Screenshot hier ein (z. B.):

Füge den folgenden Code hinzu oder ersetze bestehenden:

markdown
Copy
Edit
## 📸 Screenshot

![Account Lockout Screenshot](./account_lockout_screenshot.PNG)
Falls du den Screenshot in einen Unterordner wie docs/screenshots/ legen willst, lautet der Pfad so:

markdown
Copy
Edit
![Account Lockout Screenshot](./screenshots/account_lockout_screenshot.PNG)
Scrolle nach unten und Commit changes.

📌 Hinweis
Wenn du das Bild versehentlich auf Root-Level (wie Passwort_policy.PNG) hochgeladen hast, kannst du es:

löschen: Datei öffnen → ... (3 Punkte oben rechts) → Delete this file

neu hochladen unter docs/ oder docs/screenshots/

Möchtest du den Screenshot lieber in einen Unterordner wie docs/screenshots/ organisieren? Dann richte ich das für dich ein.

Sag einfach Bescheid:
📸 Dateiname + 💼 Wohin soll das Bild?

![Account Lockout Screenshot](./docs/account_lockout_policy.PNG)

📚 Referenz / Reference
ISO/IEC 27001:2022 – A.9.4.3: Use of secret authentication information

BSI Grundschutz – SYS.1.2.A16: Schutz vor Brute-Force

DSGVO (Artikel 32) – Sicherheit der Verarbeitung

NIST 800-53 – AC-7: Unsuccessful Logon Attempts

✅ Prüfung / Audit Check
Deutsch:

Ist die Sperrschwelle auf 5 Fehlversuche gesetzt?

Wird der Zähler nach 15 Minuten zurückgesetzt?

Erfolgt eine automatische Entsperrung nach 15 Minuten?

English:

Is the threshold set to 5 failed attempts?

Is the counter reset after 15 minutes?

Is account automatically unlocked after 15 minutes?

🧪 Testdurchführung / Validation
Falsche Anmeldung 5× mit TestUser1

Konto wurde gesperrt

Entsperrung nach Ablaufzeit getestet
