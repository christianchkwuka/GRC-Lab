

🖥️ Remote Desktop – Sicherheitsrichtlinie für RDP-Zugriff


# 🖥️ Remote Desktop (RDP) Sicherheitsrichtlinie

## 📌 GPO-Pfad / GPO Path  
Computer Configuration → Administrative Templates → Windows Components → Remote Desktop Services → Remote Desktop Session Host → Connections

---

## 🎯 Ziel / Purpose

**Deutsch:**  
Die Remote-Desktop-Verbindung (RDP) ermöglicht Fernzugriff auf Systeme. Aus Sicherheitsgründen muss der Zugriff kontrolliert, verschlüsselt und auf autorisierte Benutzer beschränkt werden – gemäß ISO 27001 A.9.2.3 und BSI OPS.1.1.A15.

**English:**  
Remote Desktop (RDP) enables remote system access. To ensure security, access must be encrypted, restricted to authorized users, and monitored—aligned with ISO 27001 A.9.2.3 and BSI OPS.1.1.A15.

---

## 🛠️ Umsetzung / Implementation

| Richtlinie / Policy                                                | Einstellung / Setting             |
|--------------------------------------------------------------------|-----------------------------------|
| Allow users to connect remotely using Remote Desktop Services      | Enabled                           |
| Require user authentication for remote connections by using NLA   | Enabled                           |
| Set time limit for disconnected sessions                           | 15 minutes                        |
| Restrict access to specific security groups (e.g. "Remote Users")  | Only authorized personnel         |
| Firewall-Regel „Remote Desktop“                                    | Nur intern freigegeben (z. B. LAN) |


Richtlinie / Policy	Einstellung / Setting

Benutzern erlauben, sich per Remote Desktop Services zu verbinden	Aktiviert
Benutzer-Authentifizierung für Remoteverbindungen mittels NLA erzwingen	Aktiviert
Zeitlimit für getrennte Sitzungen festlegen	15 Minuten
Zugriff auf bestimmte Sicherheitsgruppen beschränken (z. B. „Remote Users“)	Nur autorisiertes Personal
Firewall-Regel „Remote Desktop“	Nur intern freigegeben (z. B. LAN)


---

## 🖼️ Screenshot  

![Remote Desktop (RDP)](https://github.com/user-attachments/assets/8204ec5d-3a21-49e8-a69e-edbae437dab8)


---

## 📚 Referenz / Reference

- **ISO/IEC 27001:2022** – A.9.2.3: Management of privileged access  
- **BSI Grundschutz** – OPS.1.1.A15: Remote-Zugänge absichern  
- **DSGVO Art. 32** – Sicherheit der Verarbeitung  
- **NIST 800-53 – AC-17: Remote Access**

---

## ✅ Prüfung / Audit Check

**Deutsch:**  
- Ist RDP nur für bestimmte Benutzer(gruppen) freigegeben?  
- Wird die Verbindung über NLA (Network Level Authentication) gesichert?  
- Gibt es Firewall-Regeln, die RDP auf interne IPs beschränken?

**English:**  
- Is RDP access limited to specific users or groups?  
- Is Network Level Authentication (NLA) enforced?  
- Is the RDP firewall rule restricted to internal IPs?

---

## 🧪 Testdurchführung / Validation

- Mitgliedschaft von `TestUser1` in der Gruppe „Remote Desktop Users“ überprüft  
- RDP-Verbindung mit NLA getestet  
- Verbindung von externer IP blockiert (Firewall-Regel greift korrekt)  
