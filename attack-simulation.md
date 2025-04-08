Using Kali Linux, run a simple nmap scan against the Ubuntu VM

  ```bash
  nmap -A 10.0.2.15 #example (replace with the actual IP of Ubuntu)
````
 Nmap will output a list of open ports, services running on those ports, and potentially any vulnerabilities. This information can be used for further exploitation.

- Defence:
- Objective: Secure the Ubuntu VM by enabling a firewall and restricting incoming traffic

  - Start the Ubuntu VM.
  - Install UFW if not already installed:
    ```bash
       sudo apt install ufw
  - Enable UFW:
    ```bash
       sudo ufw enable
  - Allow SSH traffic: If you need to connect via SSH, allow SSH traffic:
    ```bash
       sudo ufw allow ssh
  - Allow Kali Linux to connect: If you know the IP address of your Kali Linux VM (e.g., 10.0.2.16), allow incoming connections from it:
    ```bash
       sudo ufw allow from 10.0.2.16 #example IP (replace with Kali IP)
  - Check the firewall status:
    ```bash
       sudo ufw status
- Test Firewall: After setting up UFW, re-run the Nmap scan from Kali Linux to ensure that unnecessary ports are blocked.
  
  - Analyze Network Traffic:
    ```bash
       sudo apt install wireshark

  - Start Wireshark
    ```bash
       sudo wireshark

- Capture traffic:
   - Select the network interface connected to your virtual network (e.g., eth0).
   - Start capturing the traffic and monitor for any suspicious activity, such as port scans, connection attempts, or unusual traffic patterns.
- Stop the capture once you've gathered enough data, and analyze the packets to understand the nature of the network traffic.
