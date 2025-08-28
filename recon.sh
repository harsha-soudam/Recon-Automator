#!/bin/bash

# Simple Recon Script using Subfinder + Nmap
# Author: Harsha (for lab use only)

# Check if domain is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <domain>"
    exit 1
fi

DOMAIN=$1
OUTPUT_DIR="${DOMAIN}_recon"

# Create output directory
mkdir -p $OUTPUT_DIR

echo "[*] Running Subfinder on $DOMAIN..."
subfinder -d $DOMAIN -silent -o $OUTPUT_DIR/subdomains.txt

if [ ! -s "$OUTPUT_DIR/subdomains.txt" ]; then
    echo "[!] No subdomains found for $DOMAIN"
    exit 1
fi

echo "[*] Subdomains saved to $OUTPUT_DIR/subdomains.txt"

echo "[*] Running Nmap scans on discovered subdomains..."
nmap -iL $OUTPUT_DIR/subdomains.txt -T4 -p- -sV -oN $OUTPUT_DIR/nmap_full.txt
nmap -iL $OUTPUT_DIR/subdomains.txt --script vuln -oN $OUTPUT_DIR/nmap_vuln.txt

echo "[*] Scans completed!"
echo "    Subdomains  -> $OUTPUT_DIR/subdomains.txt"
echo "    Full Scan   -> $OUTPUT_DIR/nmap_full.txt"
echo "    Vuln Scan   -> $OUTPUT_DIR/nmap_vuln.txt"
