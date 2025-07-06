

# 🔐 VLAN Firewall Rules – ISO/BSI/NIST/GDPR Mapping  
# 🔐 VLAN-Firewall-Regeln – ISO/BSI/NIST/DSGVO-Mapping

This documentation describes the network segmentation and firewall rule design implemented in a pfSense-based GRC lab. The rules follow ISO 27001 Annex A, BSI IT-Grundschutz, NIST SP 800-53, and GDPR Article 32.  
Diese Dokumentation beschreibt die Netzwerksegmentierung und das Firewall-Regelwerk im pfSense-basierten GRC-Labor. Die Regeln orientieren sich an ISO 27001, BSI IT-Grundschutz, NIST SP 800-53 und DSGVO Artikel 32.

---

## 1️⃣ DMZ – Demilitarized Zone

### ✅ Allowed / Erlaubt:
- TCP Port 80, 443 (HTTP/HTTPS to the Internet)

### ❌ Blocked / Blockiert:
- All other traffic (Default Deny Rule)

| Standard       | Control                                | Description (EN / DE)                                  |
|----------------|-----------------------------------------|--------------------------------------------------------|
| ISO 27001      | A.13.1.1 / A.13.1.3                     | Segmented networks / Trennung der Netzwerke            |
| BSI            | OPS.1.1.5 / NET.3.A5                    | Firewall usage / Datenflussfilterung                   |
| NIST           | AC-4 / SC-7                             | Flow control / Grenzschutz                             |
| GDPR (DSGVO)   | Art. 32                                 | Minimized data exposure / Minimierung der Angriffsfläche |

---

## 2️⃣ HR – Human Resources

### ✅ Allowed / Erlaubt:
- DNS (Port 53) and LDAP (Port 389) to internal AD

### ❌ Blocked / Blockiert:
- Internet, SMB (445), RDP (3389)

| Standard       | Control                                | Description (EN / DE)                                  |
|----------------|-----------------------------------------|--------------------------------------------------------|
| ISO 27001      | A.9.1.2 / A.13.1.3                     | Limited internal access / Zugriff auf Dienste begrenzt |
| BSI            | CON.3.A6 / OPS.1.1.5                   | Zugriff nur auf autorisierte Server                    |
| NIST           | AC-6 / SC-7 / SC-32                    | Least privilege / DNS filterung                        |
| GDPR (DSGVO)   | Art. 25 / Art. 32                      | Technical access control / Technische Zugriffskontrolle |

---

## 3️⃣ Finance – Buchhaltung / Finance Department

### ✅ Allowed / Erlaubt:
- Internal access to Finance Server (e.g. Port 3306)

### ❌ Blocked / Blockiert:
- Internet, other VLANs

| Standard       | Control                                | Description (EN / DE)                                  |
|----------------|-----------------------------------------|--------------------------------------------------------|
| ISO 27001      | A.9.4.1 / A.13.1.1                     | Access to internal systems / Zugriff auf ERP-Systeme   |
| BSI            | NET.3.A1 / ORP.4.A5                    | Trennung sensibler Systeme                             |
| NIST           | AC-17 / SC-28                          | Restricted data access / Schutz vertraulicher Daten    |
| GDPR (DSGVO)   | Art. 32                                | Financial data protection / Buchhaltungsdaten schützen |

---

## 4️⃣ IT – Systemadministration

### ✅ Allowed / Erlaubt:
- Full access to all networks (Admin Zone)

| Standard       | Control                                | Description (EN / DE)                                  |
|----------------|-----------------------------------------|--------------------------------------------------------|
| ISO 27001      | A.9.2.3 / A.12.1.2                     | Admin control / Admin-Zugriffe                         |
| BSI            | OPS.1.1.3 / ORP.4.A15                  | Kontrollierter Administratorzugang                     |
| NIST           | AC-5 / AU-2 / SI-4                     | Logging, privileged accounts / Protokollierung         |
| GDPR (DSGVO)   | Art. 32 (2)                            | Monitoring privileged access / Überwachung privilegierter Benutzer |

---

## 5️⃣ Sales – Vertrieb / Sales Department

### ✅ Allowed / Erlaubt:
- HTTP/HTTPS (80/443) and DNS (53) to the Internet

### ❌ Blocked / Blockiert:
- SMB (445), RDP (3389), FTP (21)

| Standard       | Control                                | Description (EN / DE)                                  |
|----------------|-----------------------------------------|--------------------------------------------------------|
| ISO 27001      | A.13.1.1 / A.9.1.2                     | Access limited to business function / Funktionsgebundener Zugriff |
| BSI            | NET.1.A1 / CON.3.A6                    | Trennung nach Organisationseinheiten                   |
| NIST           | AC-6 / SC-7 / SC-12                    | Least privilege / Zugriffskontrolle                    |
| GDPR (DSGVO)   | Art. 25 / Art. 32                      | Data protection by design / Datenschutz durch Technik  |

---

## 📸 Screenshots (Regeln je VLAN)

- ![Firewall_DMZ](../screenshots/firewall_dmz.png)
- ![Firewall_HR](../screenshots/firewall_hr.png)
- ![Firewall_Finance](../screenshots/firewall_finance.png)
- ![Firewall_IT](../screenshots/firewall_it.png)
- ![Firewall_Sales](../screenshots/firewall_sales.png)

---

## 📌 Recommendations / Empfehlungen

- [ ] Enable logging for blocked traffic  
  → Protokollierung für Block-Regeln aktivieren
- [ ] Use Suricata IDS/IPS on each interface  
  → Suricata für Deep Packet Inspection einsetzen
- [ ] Send logs to Wazuh for real-time alerting  
  → Logs an Wazuh weiterleiten zur Echtzeit-Analyse

