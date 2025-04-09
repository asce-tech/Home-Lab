
## Steps
-> Step-1: Installing Virtualization Software:
- Start by installing VirtualBox. Download from "https://www.virtualbox.org/wiki/Downloads" and install it on your operating system (Windows, macOS, or Linux).
- Install VirtualBox specific to your operating system:
   - Windows: Double-click the downloaded '.exe' file
   - macOS: Double-click the downloaded '.dmg' file and drag the VirtualBox icon to the Applications folder.
- Install VirtualBox Extension Pack:
   - Download the Extension Pack from the same VirtualBox download page.
   - Open VirtualBox, go to 'File' -> 'Preferences' -> 'Extensions'.
     
-> Step-2: Creating Virtual Machines(VMs):

- Download OS Images:
   - Ubuntu: "https://ubuntu.com/download/desktop"
   - Kali Linux: "https://www.kali.org/get-kali/#kali-platforms"
   - Windows:  "https://www.microsoft.com/en-us/evalcenter"
- Create a new VM in VirtualBox:
   - Open VirtualBox and click on 'New'
   - Name the VM as ubuntu or kali
   - Choose type Linux and version Ubuntu or Debian for Kali Linux
   - Allocate memory (at least 2GB or more if possible)
   - Create a virtual hard disk of at least 20 GB
- Install the OS:
   - Start the VM and select the downloaded ISO file as the startup disk
   - Select language, keyboard, layout, etc.
   - Partition the disk ( use default settings if you are unsure)
   - Create a username and password
   - Complete the installation, reboot the VM, and log in
     
-> Step-3: Network Settings:

- In VM, go to settings, then network
- Attach the VM to a bridge adapter for direct access to your home network
   - In VM, go to File -> Preferences -> Network
   - Click the NAT networks tab and ADD it
   - Configure the NAT (example: '10.0.2.0/24')
- Connect the VMs to the created NAT Network

-> Step-4: Tools Configuration 

- For Ubuntu:  
- Update the system:

  ```bash
  sudo apt update && sudo apt upgrade -y
  
- Essential tools:
  
  ```bash
  sudo apt install -y build-essential git curl wget

- For Kali Linux:
- To update the system:

  ```bash
  sudo apt update && sudo apt upgrade -y
  
- Install additional tools:

  ```bash
  sudo apt install -y nmap wireshark metasploit-framework

-> Step-5: Simulating example attack:

- Using Kali Linux, run a simple nmap scan against the Ubuntu VM

  ```bash
  nmap -A 10.0.2.15 #example (replace with the actual IP of Ubuntu)

- Defence:

  ```bash
  sudo apt install ufw
  sudo ufw enable
  sudo ufw allow ssh
  sudo ufw allow from 10.0.2.16 #example IP (replace with Kali IP)
  sudo ufw status

- Analyze Network Traffic:
  - On Ubuntu VM, install Wireshark and capture traffic:
  ```bash
  sudo apt install wireshark
  sudo wireshark

Finally, document the IP addresses and machine names for the idea, including network settings and any configurations made. 
