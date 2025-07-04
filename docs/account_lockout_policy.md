

# 🚫 Account Lockout Policy / Kontosperrungsrichtlinie

## 📌 GPO-Pfad / GPO Path  
Computer Configuration → Policies → Windows Settings → Security Settings → Account Policies → Account Lockout Policy

---

## 🎯 Ziel / Purpose

**Deutsch:**  
Diese Richtlinie verhindert, dass Benutzerkonten durch wiederholte Anmeldeversuche kompromittiert werden. Sie schützt vor Brute-Force-Angriffen.

**English:**  
This policy prevents user accounts from being compromised through repeated login attempts. It protects against brute-force attacks.

---

## 🛠️ Umsetzung / Implementation

| Richtlinie / Policy                            | Einstellung / Setting     |
|------------------------------------------------|---------------------------|
| Account lockout threshold                      | 5 invalid login attempts  |
| Account lockout duration                       | 15 minutes                |
| Reset account lockout counter after            | 15 minutes                |

---

## ⚙️ Einstellungen

| Richtlinie / Setting                          | Wert / Value              |
|-----------------------------------------------|---------------------------|
| Kontosperrungsschwelle                         | 5 ungültige Anmeldungen   |
| Kontosperrungsdauer                            | 15 Minuten                |
| Rücksetzzeit der Kontosperrung                 | 15 Minuten                |

---

## 📸 Screenshot

![kontosperrungsrichtlinien](https://github.com/user-attachments/assets/616c9c6b-8ea2-4d06-afa7-952dea05406e)

---
## 📚 Referenz / Reference

- **ISO/IEC 27001:2022** – A.9.2.3: Management of privileged access rights  
- **BSI Grundschutz** – SYS.1.2.A15: Sichere Passwörter  
- **DSGVO (Artikel 32)** – Sicherheit der Verarbeitung
- **NIST 800-53 – IA-5 Authenticator Management**


---

## ✅ Prüfung / Audit Check

**Deutsch:**  
- Wurde die Passwort-Richtlinie in der Gruppenrichtlinie korrekt konfiguriert?  
- Entspricht die Richtlinie den Mindestanforderungen (Länge, Komplexität, Ablauf)?  
- Wurde dies auf einem Client erfolgreich durchgesetzt?

**English:**  
- Was the password policy correctly configured in GPO?  
- Does it meet minimum standards (length, complexity, expiration)?  
- Was it successfully enforced on a domain client?

---

## 🧪 Testdurchführung / Validation

- Testbenutzerkonto erstellt (`TestUser1`)
- Anmeldung mit schwachem Passwort wurde verweigert
- Ablaufdatum korrekt gesetzt: 42 Tage








