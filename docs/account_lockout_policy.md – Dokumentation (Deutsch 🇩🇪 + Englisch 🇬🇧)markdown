

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


---

## 📚 Referenz / Reference

- **ISO/IEC 27001:2022** – A.9.4.3: Use of secret authentication information  
- **BSI Grundschutz** – SYS.1.2.A16: Schutz vor Brute-Force-Angriffen  
- **DSGVO (Artikel 32)** – Sicherheit der Verarbeitung  
- **NIST 800-53 – AC-7: Unsuccessful Login Attempts**

---

## ✅ Prüfung / Audit Check

**Deutsch:**  
- Ist die Kontosperrung nach X Fehlversuchen aktiviert?  
- Wird die Sperrdauer und Rücksetzzeit wie konfiguriert umgesetzt?  
- Wurde ein Angriffsszenario erfolgreich verhindert?

**English:**  
- Is account lockout enabled after X failed login attempts?  
- Are lockout duration and reset settings correctly configured?  
- Was a brute-force scenario successfully mitigated?

---

## 🧪 Testdurchführung / Validation

- Testbenutzerkonto: `TestUser2`  
- 5 falsche Passwörter → Konto gesperrt  
- Sperrung automatisch nach 15 Minuten aufgehoben







