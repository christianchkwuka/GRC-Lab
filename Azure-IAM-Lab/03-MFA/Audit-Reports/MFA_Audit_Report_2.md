# MFA Audit Report / MFA Audit-Bericht

## 1. Introduction / Einleitung
**EN:** This report documents the setup, configuration, and testing of Multi-Factor Authentication (MFA) in the Azure IAM Lab environment.  
**DE:** Dieser Bericht dokumentiert die Einrichtung, Konfiguration und Tests der Multi-Faktor-Authentifizierung (MFA) in der Azure-IAM-Laborumgebung.  

---

## 2. Objectives / Ziele
- Enforce MFA for all or selected users  
- Verify compliance with IAM security frameworks (ISO 27001, NIST, BSI, GDPR)  
- Document audit evidence for configuration and login attempts  

---

## 3. User Creation / Benutzererstellung
**EN:** Five test accounts were created in Azure Active Directory for HR, IT, Finance, and generic users.  
**DE:** Fünf Testkonten wurden in Azure Active Directory für HR, IT, Finance und generische Benutzer erstellt.  

📷 *Screenshot Placeholder*  
![User Creation](./Screenshots/01_User_Creation.png)

---

## 4. MFA Activation / MFA Aktivierung
**EN:** MFA was enabled for selected users via the Azure Portal (`Per-user MFA` setting).  
**DE:** MFA wurde für ausgewählte Benutzer über das Azure-Portal aktiviert (`Per-user MFA` Einstellung).  

📷 *Screenshot Placeholder*  
![MFA Enabled](./Screenshots/02_Enable_MFA.png)

---

## 5. Login Test / Login-Test
**EN:** Users were required to log in with Microsoft Authenticator. Login attempts were verified in the sign-in logs.  
**DE:** Benutzer mussten sich mit Microsoft Authenticator anmelden. Die Anmeldeversuche wurden in den Anmeldeprotokollen überprüft.  

📷 *Screenshot Placeholder*  
![Login Test](./Screenshots/03_Login_Test.png)

---

## 6. Sign-in Logs Verification / Überprüfung der Anmeldeprotokolle
**EN:** Azure AD sign-in logs confirmed successful MFA enforcement and identified failed login attempts when MFA was not configured.  
**DE:** Azure AD Anmeldeprotokolle bestätigten die erfolgreiche Durchsetzung von MFA und identifizierten fehlgeschlagene Anmeldeversuche, wenn MFA nicht konfiguriert war.  

📷 *Screenshot Placeholder*  
![Sign-in Logs](./Screenshots/04_SignInLogs.png)

---

## 7. Framework Mapping / Rahmenwerkszuordnung
- **ISO 27001 A.9.4.2**: Secure logon procedures (MFA)  
- **NIST 800-53 IA-2**: Multi-Factor Authentication  
- **BSI IT-Grundschutz ORP.4.A10**: Einsatz von Mehrfaktor-Authentisierung  
- **GDPR Art. 32**: Security of processing (MFA for protecting personal data access)  

---

## 8. Findings & Recommendations / Ergebnisse & Empfehlungen
**EN:**  
- MFA successfully enforced for selected test users  
- Logs provide sufficient audit evidence  
- Recommendation: Extend MFA to all administrative and privileged accounts  

**DE:**  
- MFA wurde erfolgreich für ausgewählte Testbenutzer durchgesetzt  
- Protokolle liefern ausreichende Audit-Nachweise  
- Empfehlung: MFA auf alle administrativen und privilegierten Konten ausweiten  

---

## 9. Conclusion / Fazit
**EN:** MFA implementation in Azure AD enhances security posture, reduces account compromise risks, and supports compliance with international standards.  
**DE:** Die Implementierung von MFA in Azure AD verbessert die Sicherheitslage, reduziert Risiken bei Kontenkompromittierung und unterstützt die Einhaltung internationaler Standards.  
