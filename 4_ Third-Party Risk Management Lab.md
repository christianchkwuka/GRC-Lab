# 📦 Third-Party Risk Management Lab (Vendor Audit)

This project simulates a **Third-Party Risk Management** scenario, auditing a vendor with weak cybersecurity, using pfSense, Kali Linux, Ubuntu (Wazuh agent), and VirtualBox.

---

## 🌍 Lab Overview

- **Environment:**
  - Kali Linux (Attacker)
  - Ubuntu Server (Vendor, Wazuh agent installed)
  - pfSense Firewall (VLAN setup)
  - Windows Server 2022 (optional)

- **Network Setup:**
  - NAT, Host-only, Internal Network (VirtualBox)
  - Vendor isolated in VLAN 56 (192.168.56.x)

---

## 🔧 Steps

### 1️⃣ Setup Vendor VLAN in pfSense
- Create VLAN 56
- Assign 192.168.56.x range
- Configure firewall rules:
  - Allow Wazuh access
  - Block internal traffic

### 2️⃣ Simulate Breach from Kali
- Run `nmap --script vuln` scans
- Use Metasploit for known CVEs (e.g., HTTP verb tampering)

### 3️⃣ Configure Wazuh Monitoring
- Install Wazuh agent on Ubuntu
- Enable access log monitoring, CVE alerts, suspicious activity alerts

### 4️⃣ Generate Risk Scorecard
- Critical vulnerabilities
- Access violations
- Patch status

---

## 📊 Results

| Risk Category        | Score      |
|----------------------|------------|
| Vulnerabilities      | Critical   |
| Access Violations    | High       |
| Patch Status         | Outdated   |
| Overall Risk        | Critical   |

---

## 🛡 Recommendations

- Enforce VLAN segmentation
- Apply patches & secure configs
- Continuous monitoring with Wazuh
- Regular penetration tests
- Update vendor risk register

---

## 📂 Project Files

- `docs/` → Full lab documentation (DE/EN)
- `screenshots/` → Command & dashboard screenshots
- `reports/` → Wazuh risk report exports

---

✅ **Next:** Upload all evidence to GitHub, track changes, and integrate with audit workflow.
