📁 GitHub-Dokumentation (DE & EN Vorlage)



# 🌐 Netzwerkverbindung: Kali ↔ pfSense (VirtualBox)

## Ziel / Objective
Verbindung zwischen Kali Linux und pfSense über internes Netzwerk (`grc-lab`), um Firewall- und IDS/IPS-Tests zu ermöglichen.

## VirtualBox-Netzwerkadapter
| VM        | Adapter | Typ             | Beschreibung                      |
|-----------|---------|------------------|-----------------------------------|
| Kali      | Adapter 1 | NAT           | Internetzugang                    |
| Kali      | Adapter 3 | Internal (grc-lab) | Verbindung zu pfSense            |
| pfSense   | Adapter 2 | Internal (grc-lab) | LAN-Interface (192.168.56.100)   |

## Manuelle Netzwerkeinrichtung (Kali)

sudo ip addr add 192.168.56.110/24 dev eth2
sudo ip route add default via 192.168.56.100
echo "nameserver 8.8.8.8" | sudo tee /etc/resolv.conf
Verbindungen testen

ping 192.168.56.100  # pfSense
ping 8.8.8.8         # Internet
