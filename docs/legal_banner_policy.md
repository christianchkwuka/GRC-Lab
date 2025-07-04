

# 📜 Legal Banner Display / Rechtlicher Hinweis vor der Anmeldung

## 📌 GPO-Pfad / GPO Path
`Computer Configuration → Windows Settings → Security Settings → Local Policies → Security Options`

---

## 🎯 Ziel / Purpose

**Deutsch:**  
Die Anzeige eines rechtlichen Hinweises vor der Anmeldung soll Benutzer auf die Nutzungsbedingungen und die mögliche Überwachung aufmerksam machen. Dies ist Teil einer sicheren Anmeldestrategie nach ISO 27001 A.9.4.2.

**English:**  
Displaying a legal banner before login informs users about usage policies and monitoring. This is part of secure logon procedures under ISO 27001 A.9.4.2.

---

## 🛠️ Umsetzung / Implementation

| Richtlinie / Policy                                                | Einstellung / Setting                                     |
|--------------------------------------------------------------------|------------------------------------------------------------|
| Interactive logon: Message title for users attempting to log on    | Hinweis zur IT-Nutzung / IT Usage Notice                  |
| Interactive logon: Message text for users attempting to log on     | Siehe Beispiel unten / See example below                  |

---

## ✍️ Beispieltext / Example Banner Message

### 🔖 Titel / Title

- **Deutsch:** Hinweis zur IT-Nutzung  
- **English:** IT Usage Notice

### 📄 Text / Message



Deutsch:
Diese IT-Systeme sind ausschließlich für autorisierte Benutzer bestimmt. Alle Aktivitäten können protokolliert und überwacht werden. Unbefugter Zugriff wird strafrechtlich verfolgt.

English:
This IT system is intended for authorized users only. All activities may be monitored and recorded. Unauthorized access is prohibited and will be prosecuted.

📸 Screenshot

![legal display](https://github.com/user-attachments/assets/c7ee115c-1600-49f3-9535-a5929b6c6c27)

📚 Referenz / Reference

ISO/IEC 27001:2022 – A.9.4.2: Secure log-on procedures
NIST SP 800-53 – AC-8: System Use Notification
BSI Grundschutz – SYS.1.2.A16: Benutzerhinweise anzeigen

✅ Prüfung / Audit Check

Prüffrage (Deutsch)	Audit Check (English)

Wird ein rechtlicher Hinweis vor der Anmeldung angezeigt?      	Is a legal banner shown before logon?
Entspricht der Text den Vorgaben (Warnung, Protokollierung)?   	Does the banner comply (warning, logging notice)?
Ist der Text nicht manipulierbar durch den Benutzer?	          Is the message secure and uneditable by users?

🧪 Testdurchführung / Validation

Titel und Nachricht in GPO konfiguriert
Anzeige bei Anmeldung geprüft (vor Username/PW-Eingabe sichtbar)
Screenshot erstellt und dokumentiert




