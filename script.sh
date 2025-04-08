#!/bin/bash
sudo apt update && sudo apt upgrade -y
sudo apt install -y build-essential git curl wget nmap wireshark metasploit-framework ufw
sudo ufw enable
sudo ufw allow ssh
