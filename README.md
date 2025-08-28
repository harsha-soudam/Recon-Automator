# 🔍 Recon-Automator
A simple Bash script to automate passive & active reconnaissance using Subfinder
and Nmap. This tool is designed for cybersecurity students and researchers to run recon in their own labs for practice, not against external systems without permission.

# ⚡ Features

> Runs Subfinder to collect subdomains for a given domain.

> Uses Nmap to scan all subdomains for:

  ->Open ports & services (-sV)
  
  ->Full port scan (-p-)
  
  ->Vulnerability detection using NSE scripts (--script vuln)

> Organizes results in a clean folder structure per target.

> One command → complete recon.

📂 Output Structure

For a domain example.com, results are stored in:
```
example.com_recon/
 ├── subdomains.txt    # Subfinder results
 ├── nmap_full.txt     # Nmap full port & service scan
 └── nmap_vuln.txt     # Nmap vuln script results
```

🚀 Installation

Make sure you have the following installed:

1. Subfinder

2. Nmap

On Kali Linux:

```
sudo apt update
sudo apt install subfinder nmap -y
```

🛠️ Usage

```
./recon.sh <domain>
```

# Example:

```
./recon.sh hackerone.com
```

📸 Demo

```
[*] Running Subfinder on hackerone.com...
[*] Subdomains saved to hackerone.com_recon/subdomains.txt
[*] Running Nmap scans on discovered subdomains...
[*] Scans completed!
    Subdomains  -> hackerone.com_recon/subdomains.txt
    Full Scan   -> hackerone.com_recon/nmap_full.txt
    Vuln Scan   -> hackerone.com_recon/nmap_vuln.txt
```

⚠️ Disclaimer

This project is for educational use only.
Do NOT use it against systems you don’t own or have explicit permission to test. Unauthorized scanning may be illegal.

🧑‍💻 Author

Harshavardhan
