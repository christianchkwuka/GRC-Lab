# MFA Audit Report – Azure IAM Lab

## Objective
To verify that Multi-Factor Authentication (MFA) is enforced using secure authentication methods in Microsoft Entra ID.

## Evidence
- Screenshot: Authentication method policies (see `/screenshots/MFA_Policies.png`)
- <img width="1865" height="905" alt="image" src="https://github.com/user-attachments/assets/fd6e8a64-fec0-4b8e-8a41-5aedf673f918" />

<img width="1877" height="868" alt="image" src="https://github.com/user-attachments/assets/2596fc23-3791-4745-b7e4-652eead82f5d" />


- CLI: `az ad user list --query "[].{Name:displayName, MFA:authenticationMethods}" -o table`

- 

## Findings
- ✅ Passkey (FIDO2) enabled  
- ✅ Microsoft Authenticator enabled  
- ⚠️ SMS disabled (recommended – weak method)  
- ⚠️ Temporary Access Pass enabled (should be limited to break-glass accounts)  
- ❌ Email OTP not enabled (good – less secure)  

## Risk Assessment
- High: If insecure methods (SMS, Email OTP) are enabled → risk of phishing/SIM swap.  
- Low: Current config shows strong authentication options (Passkeys, Authenticator).  

## Compliance Mapping
- ISO 27001 A.9.4.2  
- NIST IA-2  
- BSI ORP.4.A7  
- GDPR Art. 32  

## Recommendation
- Keep SMS/Email disabled.  
- Restrict Temporary Access Pass to emergency use only.  
- Monitor MFA adoption (all users should register at least one strong method).  

