📄 Network Design & Audit Documentation Template
markdown
Copy
Edit
# 🏗️ Netzwerkdesign & Sicherheitsüberprüfung  
**Network Design & Security Review**

---

## 📡 1. Netzwerkdesign / Network Design

**DE:**  
Diagramm und Beschreibung der Netzwerksegmente, VLANs, Interfaces und verbundenen Systeme.  

**EN:**  
Diagram and description of network segments, VLANs, interfaces, and connected systems.

| Segment       | Beschreibung / Description                       |
|--------------|-------------------------------------------------|
| DMZ         | Webserver, Reverse Proxy, externe Services       |
| Internal LAN | AD, Fileserver, Datenbanken                    |
| Management   | Firewall, SIEM, Monitoring                      |
| External     | Internetzugang, WAN                             |

✏️ **Beilage:** Diagramm als PNG oder Visio

---

## 📝 2. Checkliste / Checklist

**Netzwerk- und Sicherheitsüberprüfung**  
**Network & Security Checklist**

| Bereich / Area                 | Checkpunkt / Checkpoint                                   | Status    |
|-------------------------------|----------------------------------------------------------|----------|
| 🔐 Firewall Rules             | Nur notwendige Ports offen, z. B. 80, 443, 53             | ✅ / ❌  |
| 🌐 VLAN-Segmentierung         | VLANs für HR, IT, Finance, DMZ korrekt konfiguriert      | ✅ / ❌  |
| ⚠️ IDS/IPS                   | Suricata aktiviert, Regeln aktuell                       | ✅ / ❌  |
| 🕵️ Logging                  | Syslog an Wazuh, pfSense-Logs, Suricata-Logs aktiviert   | ✅ / ❌  |
| 🛡️ Firewall Policies Review  | Allow, Deny, Reject-Regeln dokumentiert                 | ✅ / ❌  |

---

## 🔒 3. Firewall-Policydokumentation / Firewall Policies Documentation

| Regel-ID / Rule ID | Quelle / Source         | Ziel / Destination      | Port   | Aktion / Action | Kommentar / Comment             |
|---------------------|------------------------|-------------------------|--------|-----------------|---------------------------------|
| FW-001             | 192.168.56.0/24        | 192.168.56.100         | 22     | Allow          | SSH Zugriff von intern          |
| FW-002             | 0.0.0.0/0             | 192.168.56.100         | 443    | Allow          | HTTPS Webserver                 |
| FW-003             | 192.168.56.20         | 192.168.56.100         | any    | Block          | Blockiere Kali Scan-Versuche    |

---

## 🔬 4. Testergebnisse / Test Results

| Test / Check                     | Ergebnis / Result             | Log / Nachweis            |
|----------------------------------|-------------------------------|---------------------------|
| Nmap Scan aus Kali auf pfSense   | 53, 80, 443 offen            | `nmap -sS -T4 -p- <IP>` |
| Suricata Alert bei Portscan      | Alert erkannt, geblockt      | /var/log/suricata/eve.json |
| Wazuh Dashboard Alert            | Alert angezeigt, korreliert  | Wazuh Discover View      |
| Firewall Logblock überprüft      | Block-Einträge sichtbar      | /var/log/filter.log      |

---

## 📊 Zusammenfassung & Empfehlungen / Summary & Recommendations

**DE:**  
- Unnötige Ports schließen  
- IDS/IPS-Regeln aktualisieren  
- Regelmäßige Tests automatisieren  
- Ergebnisse dokumentieren und archivieren

**EN:**  
- Close unnecessary ports  
- Update IDS/IPS rules regularly  
- Automate regular testing  
- Document and archive results

---

