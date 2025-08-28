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

