# 📄 Umfassendes Third-Party Risk Management Lab (Lieferantenaudit-Szenario)

## 🛠️ Lab-Setup Übersicht

* **Umgebung:**

  * Kali Linux (Angreifer)
  * Ubuntu Server (Lieferantenziel, mit Wazuh-Agent)
  * pfSense Firewall
  * Windows Server 2022 (Unternehmensnetzwerk, optional)
  * VirtualBox-Netzwerk: NAT, Host-only, Internal Network ("grc-lab"), VLAN für Lieferantensegment

* **Szenario:** Simulation eines Lieferanten (z. B. Batterielieferant) mit schwacher Cybersicherheit.

* **Framework-Referenz:** ISO 27001 A.15.1 (Informationssicherheit in Lieferantenbeziehungen)

---

## 🔗 Schritt 1: Lieferantennetzwerk in pfSense simulieren

* Isoliertes **VLAN** in pfSense erstellen (z. B. VLAN 56, 192.168.56.x)
* Firewall-Regeln konfigurieren:

  * Zugriff des Lieferanten ins interne Netz einschränken
  * Zugriff des Wazuh-Managers auf Lieferantenprotokolle erlauben
* Netzsegmentierung prüfen:

  ```bash
  ip a
  ip route show
  ```
* Schnittstellen und DHCP-Einstellungen in pfSense für das Lieferantensegment überprüfen

---

## ⚔️ Schritt 2: Lieferantenangriff simulieren (Kali Penetration Test)

* Kali-Tools verwenden:

  * `nmap`, um Lieferanten-IPs zu scannen
  * `metasploit`, um bekannte CVEs auszunutzen (z. B. HTTP Verb Tampering)
* Beispielbefehl:

  ```bash
  sudo nmap --script vuln 192.168.56.7
  ```
* Erfolgreiche Angriffe und Schwachstellen dokumentieren

---

## 📡 Schritt 3: Überwachung mit Wazuh SIEM

* Wazuh-Agent auf Lieferantenserver (Ubuntu) installieren
* Wazuh-Regeln konfigurieren für:

  * Zugriffprotokoll-Überwachung
  * Alarmierung bei verdächtigen Aktivitäten (fehlgeschlagene Logins, Privilegienerhöhungen, externe Verbindungen)
* Alarme im Wazuh-Dashboard überprüfen:

  * Kritische CVEs
  * Zugriffsverletzungen
  * Unerwarteter ausgehender Traffic

---

## 📊 Schritt 4: Lieferanten-Risikoscorecard erstellen

| Risikokategorie      | Bewertung |
| -------------------- | --------- |
| Schwachstellen       | Kritisch  |
| Zugriffsverletzungen | Hoch      |
| Patch-Status         | Veraltet  |
| Gesamtrisiko         | Kritisch  |

* Bericht aus dem Wazuh-Dashboard generieren
* Top-Risiken hervorheben und Gegenmaßnahmen empfehlen

---

## 💥 Geschäftsauswirkungen

* Mögliche Unterbrechung der Lieferkette
* Datenlecks durch Lieferantenzugriff
* Compliance-Risiken (z. B. DSGVO, ISO 27001)
* Reputationsschäden für das Unternehmen

---

## 🛡️ Empfehlungen (ISO 27001 Bezug)

* Strikte Netzsegmentierung für Lieferanten durchsetzen (pfSense VLAN)
* Lieferanten zu Patches und sicheren Konfigurationen verpflichten
* Lieferantenaktivitäten kontinuierlich mit Wazuh überwachen
* Regelmäßige Third-Party-Penetrationstests durchführen
* Third-Party-Risikoregister aktualisieren und Stakeholder informieren

---

✅ **Nächster Schritt:** Szenario mit Screenshots dokumentieren, Wazuh-Berichte exportieren und alles als Auditevidenz auf GitHub hochladen.

---

# 📄 Comprehensive Third-Party Risk Management Lab (Vendor Audit Scenario)

## 🛠️ Lab Setup Overview

* **Environment:**

  * Kali Linux (Attacker)
  * Ubuntu Server (Vendor Target, with Wazuh Agent)
  * pfSense Firewall
  * Windows Server 2022 (Enterprise Network, optional)
  * VirtualBox networking: NAT, Host-only, Internal Network ("grc-lab"), VLAN for vendor segment

* **Scenario:** Simulate a vendor (e.g., battery supplier) with weak cybersecurity posture.

* **Framework Alignment:** ISO 27001 A.15.1 (Information security in supplier relationships)

---

## 🔗 Step 1: Vendor Network Simulation in pfSense

* Create isolated **VLAN** in pfSense for vendor (e.g., VLAN 56, 192.168.56.x)
* Configure firewall rules to:

  * Restrict vendor-to-internal access
  * Allow Wazuh manager to access vendor logs
* Verify network segmentation:

  ```bash
  ip a
  ip route show
  ```
* Check pfSense interface assignments and DHCP settings for vendor segment

---

## ⚔️ Step 2: Simulate Vendor Breach (Kali Penetration Test)

* Use Kali Linux tools:

  * `nmap` to scan vendor IPs
  * `metasploit` to exploit known CVEs (e.g., HTTP verb tampering)
* Sample command:

  ```bash
  sudo nmap --script vuln 192.168.56.7
  ```
* Document any successful exploits or service weaknesses

---

## 📡 Step 3: Monitor with Wazuh SIEM

* Configure Wazuh agent on vendor server (Ubuntu)
* Set up Wazuh rules for:

  * Access log monitoring
  * Alert on suspicious activities (failed logins, privilege escalation, external connections)
* Verify alerts in Wazuh dashboard:

  * Critical CVEs
  * Access violations
  * Unexpected outbound traffic

---

## 📊 Step 4: Create Vendor Risk Scorecard

| Risk Category     | Score    |
| ----------------- | -------- |
| Vulnerabilities   | Critical |
| Access Violations | High     |
| Patch Status      | Outdated |
| Overall Risk      | Critical |

* Generate report from Wazuh dashboard
* Highlight top risks and recommend remediation

---

## 💥 Business Impact

* Potential supply chain disruption
* Data leaks from vendor access
* Compliance risks (e.g., GDPR, ISO 27001)
* Reputational damage to enterprise

---

## 🛡️ Recommendations (ISO 27001 Alignment)

* Enforce strict vendor network segmentation (pfSense VLAN)
* Require vendor patching and secure configurations
* Continuously monitor vendor activities with Wazuh
* Perform regular third-party penetration tests
* Update third-party risk register and inform stakeholders

---

✅ **Next step:** Document the scenario with screenshots, export Wazuh reports, and upload all to GitHub for audit evidence.
