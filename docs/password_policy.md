
📄 **Password Policy Documentation**  
_Dokumentation (Deutsch 🇩🇪 + Englisch 🇬🇧)_

# 🔐 Passwort-Richtlinie / Password Policy

---

## 📌 GPO-Pfad / GPO Path  
`Computer Configuration → Policies → Windows Settings → Security Settings → Account Policies → Password Policy`

---

## 🎯 Ziel / Purpose

**🇩🇪 Deutsch**  
Diese Passwort-Richtlinie soll sicherstellen, dass Benutzer sichere Passwörter verwenden, um unbefugten Zugriff zu verhindern.  
Sie ist ein grundlegender Bestandteil der Zugangskontrolle gemäß **ISO 27001 A.9**.

**🇬🇧 English**  
The password policy ensures users choose secure passwords to prevent unauthorized access.  
It is a fundamental part of access control under **ISO 27001 A.9**.

---

## 🛠️ Umsetzung / Implementation (EN)

| 🔧 Policy                                     | ⚙️ Setting                  |
|----------------------------------------------|-----------------------------|
| Enforce password history                      | 24 passwords remembered     |
| Maximum password age                          | 42 days                     |
| Minimum password age                          | 1 day                       |
| Minimum password length                       | 12 characters               |
| Password must meet complexity requirements    | Enabled                     |
| Store passwords using reversible encryption   | Disabled                    |

---

## 🛠️ Einstellungen / Configuration (DE)

| 🔧 Richtlinie                                      | ⚙️ Einstellung           |
|---------------------------------------------------|---------------------------|
| Vorherige Passwörter speichern                    | 24                        |
| Maximale Kennwortgültigkeitsdauer                 | 42 Tage                   |
| Minimale Kennwortgültigkeitsdauer                 | 1 Tag                     |
| Minimale Kennwortlänge                            | 12 Zeichen                |
| Komplexitätsanforderungen aktivieren              | Aktiviert                 |
| Minimale Kennwortlängenbeschränkung lockern       | Deaktiviert               |
| Kennwörter mit umkehrbarer Verschlüsselung speichern | Deaktiviert            |

---

## 📸 Screenshot

![Account Lockout Screenshot](./account_lockout_screenshot.PNG)

---

## 📚 Referenzen / References

- **ISO/IEC 27001:2022** – A.9.2.3: Management of privileged access rights  
- **BSI IT-Grundschutz** – SYS.1.2.A15: Sichere Passwörter  
- **DSGVO (Art. 32)** – Sicherheit der Verarbeitung  
- **NIST 800-53** – IA-5: Authenticator Management  

---

## ✅ Prüfung / Audit Checklist

**🇩🇪 Deutsch**  
- [ ] Ist die Passwort-Richtlinie in der GPO korrekt konfiguriert?  
- [ ] Entspricht sie den Mindestanforderungen (Länge, Komplexität, Ablauf)?  
- [ ] Wird sie auf einem Client erfolgreich durchgesetzt?

**🇬🇧 English**  
- [ ] Is the password policy correctly configured in GPO?  
- [ ] Does it meet the minimum requirements (length, complexity, expiration)?  
- [ ] Is it successfully enforced on a domain client?

---

## 🧪 Testdurchführung / Validation

- [x] Test user `TestUser1` created  
- [x] Weak password rejected  
- [x] Expiration period validated (42 days)












