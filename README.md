# 🏠 Setting Up a Cybersecurity Home Lab

## 📌 Project Objective

This project involves setting up a virtualized home lab to practice and improve cybersecurity skills by simulating real-world attack and defense scenarios.

---

## ✅ Prerequisites

- Basic knowledge of computer networking
- A PC with **at least 8 GB RAM** and sufficient disk space
- Virtualization software such as **VirtualBox** or **VMware Workstation**

---

## 🛠️ Steps to Set Up the Lab

### 🔧 Step 1: Installing Virtualization Software

- Download **VirtualBox**:  
  [https://www.virtualbox.org/wiki/Downloads](https://www.virtualbox.org/wiki/Downloads)
- Install according to your OS:
  - **Windows**: Run the `.exe` installer
  - **macOS**: Open the `.dmg` file and drag VirtualBox to Applications
- Install the **VirtualBox Extension Pack**:
  - Go to `File` → `Preferences` → `Extensions` → Add the Extension Pack

---

### 💻 Step 2: Creating Virtual Machines (VMs)

#### 🖥️ Download OS Images:

- Ubuntu: [https://ubuntu.com/download/desktop](https://ubuntu.com/download/desktop)  
- Kali Linux: [https://www.kali.org/get-kali/#kali-platforms](https://www.kali.org/get-kali/#kali-platforms)  
- Windows: [https://www.microsoft.com/en-us/evalcenter](https://www.microsoft.com/en-us/evalcenter)  

#### 🧩 Create and Configure VM:

1. Open VirtualBox → Click **New**
2. Name the VM (e.g., *Ubuntu*, *Kali*)
3. Choose:
   - Type: **Linux**
   - Version: **Ubuntu (64-bit)** or **Debian** for Kali
4. Allocate:
   - Memory: **2 GB or more**
   - Disk space: **20 GB or more**
5. Boot using the ISO file and install the OS

---

### 🌐 Step 3: Network Settings

- In VirtualBox VM settings → Network:
  - Choose **Bridged Adapter** for external access
- To configure NAT:
  - File → Preferences → Network → NAT Networks → Add
  - Set subnet (e.g., `10.0.2.0/24`)
- Connect both VMs to the same network type

---

### 🧰 Step 4: Tools Configuration

#### 🟪 Ubuntu VM

- Update system:

```bash
sudo apt update && sudo apt upgrade -y
```

- Install essential tools:
```bash
sudo apt install -y build-essential git curl wget
```

- Install Wireshark

📝 Final Notes
- Document all VM names, IP addresses, and network settings used
- Keep logs of tool installation and configurations for repeatability
- Take snapshots at each phase for rollback or testing

