# 🛡️ GRC-Laborumgebung mit Windows Server, pfSense, Kali Linux & Wazuh

## 🇩🇪 Beschreibung (Deutsch)

Willkommen in meinem praktischen GRC-Labor (Governance, Risk & Compliance), das speziell für IT-Audits, Sicherheitstrainings und ISO 27001/BSI/NIST/DSGVO-Mapping entwickelt wurde. Dieses Labor läuft vollständig in VirtualBox und simuliert eine realistische Unternehmensumgebung mit verschiedenen Netzwerken und Sicherheitszonen.

### 💡 Ziel dieses Projekts

- ISO 27001-, BSI- und NIST-Kontrollen in einer Lab-Umgebung nachvollziehen
- Sicherheitsrichtlinien mit GPOs umsetzen (z. B. Passwort-, USB-, RDP-Richtlinien)
- pfSense als Firewall für Netzwerksegmentierung und IDS/IPS einsetzen
- Wazuh als zentrales SIEM zum Log-Monitoring konfigurieren
- Kali Linux für Schwachstellenscans, Audit-Tests und Penetrationstests verwenden

---

## 🧱 Infrastrukturübersicht

| Komponente        | Beschreibung                                 |
|-------------------|----------------------------------------------|
| 🖥️ Windows Server | Active Directory, GPOs, Gruppenrichtlinien   |
| 🔥 pfSense        | Netzwerksegmentierung, Firewall, Suricata    |
| 🐧 Kali Linux     | Penetrationstests, Nmap, Schwachstellenprüfung |
| 🐙 Ubuntu         | Wazuh SIEM-Server zur zentralen Überwachung  |

---

## 📁 Dokumentierte Sicherheitsbereiche (GPOs)

- [x] Passwort-Richtlinie (Password Policy)
- [x] USB-Zugriffskontrolle (USB Access Control)
- [x] Bildschirmsperre (Screen Lock Policy)
- [x] RDP-Sicherheit (Remote Desktop Restrictions)
- [x] Ereignisprotokollierung (Audit Event Log)
- [x] BitLocker-Verschlüsselung
- [ ] Weitere folgen...

---

## 🔍 Compliance-Frameworks & Mapping

Dieses Lab simuliert und dokumentiert Kontrollen aus folgenden Standards:

| Framework | Fokus |
|----------|-------|
| ✅ ISO/IEC 27001:2022 | Informationssicherheit (Annex A) |
| ✅ BSI IT-Grundschutz | Grundschutz-Bausteine |
| ✅ NIST SP 800-53    | Technische und administrative Kontrollen |
| ✅ DSGVO              | Datenschutz und Zugriffsschutz |

---

## 🌍 English Summary

This is a practical GRC (Governance, Risk & Compliance) lab environment running entirely in VirtualBox, focused on simulating ISO 27001, BSI, NIST, and GDPR-compliant setups using:

- **Windows Server** for GPO and Active Directory policy enforcement
- **pfSense Firewall** for segmentation, rules, IDS/IPS with Suricata
- **Kali Linux** for vulnerability scanning and penetration testing
- **Ubuntu Wazuh Server** for centralized log management and SIEM

---

## 📎 Hinweise

- 📂 Screenshots und Markdown-Dokumentation sind im Ordner `/documentation`
- 🛠️ GPO-Richtlinien sind im Ordner `/gpo-templates`
- 🔍 IDS/IPS-Tests sind unter `/network-tests` dokumentiert

---

## 📌 Autor

**Christian Chukwuka**  
GRC & Cybersecurity Enthusiast 🇩🇪🇮🇪  
M.Sc. Data Analytics | CISA | CISM | ISO 27001 Lead Auditor  
[LinkedIn-Profil oder GitHub-Link hier einfügen]

