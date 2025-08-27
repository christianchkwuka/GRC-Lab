# MFA Audit Checklist / MFA Audit-Checkliste

## General Information / Allgemeine Informationen
- **Auditor / Prüfer:** _____________________
- **Date / Datum:** ________________________
- **Tenant / Mandant:** ____________________
- **Scope / Geltungsbereich:** Azure AD IAM Lab (Test Users)

---

## 1. User Management / Benutzerverwaltung
| Checkpoint / Prüffrage | Yes / Ja | No / Nein | Evidence / Nachweis |
|-------------------------|----------|-----------|----------------------|
| Are all accounts assigned to named individuals (no shared accounts)? / Sind alle Konten namentlich zugeordnet (keine Sammelkonten)? | ☐ | ☐ | Screenshot User List |
| Are admin and privileged accounts separated from normal user accounts? / Sind Admin- und privilegierte Konten von normalen Benutzerkonten getrennt? | ☐ | ☐ | Screenshot RBAC |

---

## 2. MFA Activation / MFA-Aktivierung
| Checkpoint / Prüffrage | Yes / Ja | No / Nein | Evidence / Nachweis |
|-------------------------|----------|-----------|----------------------|
| Is MFA enabled for all user accounts? / Ist MFA für alle Benutzerkonten aktiviert? | ☐ | ☐ | Screenshot Per-user MFA |
| Is MFA mandatory for administrative accounts? / Ist MFA für Administratorkonten verpflichtend? | ☐ | ☐ | Screenshot MFA Policy |
| Are MFA settings enforced via Conditional Access or Security Defaults? / Werden MFA-Einstellungen über Conditional Access oder Security Defaults durchgesetzt? | ☐ | ☐ | Screenshot Conditional Access |

---

## 3. Authentication Method / Authentifizierungsmethode
| Checkpoint / Prüffrage | Yes / Ja | No / Nein | Evidence / Nachweis |
|-------------------------|----------|-----------|----------------------|
| Is Microsoft Authenticator (or equivalent) configured for MFA? / Ist Microsoft Authenticator (oder gleichwertig) für MFA konfiguriert? | ☐ | ☐ | Screenshot QR Setup |
| Are backup methods (SMS, Email, App Passwords) restricted? / Sind Backup-Methoden (SMS, E-Mail, App-Passwörter) eingeschränkt? | ☐ | ☐ | Policy Screenshot |
| Is passwordless authentication considered? / Wird passwortlose Authentifizierung in Betracht gezogen? | ☐ | ☐ | Screenshot Auth Method |

---

## 4. Sign-In Logs / Anmeldeprotokolle
| Checkpoint / Prüffrage | Yes / Ja | No / Nein | Evidence / Nachweis |
|-------------------------|----------|-----------|----------------------|
| Are sign-in attempts with and without MFA logged? / Werden Anmeldeversuche mit und ohne MFA protokolliert? | ☐ | ☐ | Screenshot Logs |
| Are failed MFA attempts clearly visible in logs? / Sind fehlgeschlagene MFA-Versuche in den Logs eindeutig sichtbar? | ☐ | ☐ | Screenshot Logs |
| Are alerts configured for suspicious sign-ins (impossible travel, risky sign-ins)? / Sind Alarme für verdächtige Anmeldungen (Impossible Travel, Risky Sign-Ins) konfiguriert? | ☐ | ☐ | Screenshot Identity Protection |

---

## 5. Compliance Mapping / Compliance-Zuordnung
| Framework | Control / Maßnahme | Status | Evidence / Nachweis |
|-----------|---------------------|--------|----------------------|
| ISO 27001 | A.9.4.2 Secure log-on procedures | ☐ Implemented / ☐ Not Implemented | MFA Config Screenshot |
| NIST 800-53 | IA-2 Multi-Factor Authentication | ☐ Implemented / ☐ Not Implemented | Logs Screenshot |
| BSI IT-Grundschutz | ORP.4.A10 MFA usage | ☐ Implemented / ☐ Not Implemented | Screenshot Conditional Access |
| GDPR Art. 32 | Security of processing | ☐ Implemented / ☐ Not Implemented | Report |

---

## 6. Findings & Recommendations / Ergebnisse & Empfehlungen
**Findings / Ergebnisse:**  
- ______________________________________________________  

**Recommendations / Empfehlungen:**  
- ______________________________________________________  

---

✅ **Audit Checklist Completed by / Audit-Checkliste ausgefüllt von:**  
Name: _____________________   Date: _____________________

