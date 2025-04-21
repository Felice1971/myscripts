#!/bin/bash

# ---------------------- Utility Functions ----------------------

pause() {
  read -rp "Press [Enter] key to return to the menu..."
}

print_header() {
  clear
  echo "===================================================="
  echo "         ADVANCED SYSTEM INVENTORY TOOL"
  echo "===================================================="
  echo
}

# ---------------------- Inventory Functions ----------------------

cpu_info() {
  print_header
  echo "=== CPU Info ==="
  lscpu
  pause
}

memory_info() {
  print_header
  echo "=== Memory Info ==="
  free -h
  pause
}

disk_info() {
  print_header
  echo "=== Disk Usage ==="
  df -hT
  pause
}

block_devices() {
  print_header
  echo "=== Block Devices ==="
  lsblk -o NAME,FSTYPE,SIZE,MOUNTPOINT,LABEL
  pause
}

network_interfaces() {
  print_header
  echo "=== Network Interfaces ==="
  ip -br addr show
  pause
}

public_ip() {
  print_header
  echo "=== External IP ==="
  curl -s ifconfig.me || echo "Unable to fetch external IP"
  pause
}

firewall_status() {
  print_header
  echo "=== Firewall Status ==="
  sudo ufw status verbose 2>/dev/null || sudo firewall-cmd --state 2>/dev/null || echo "No firewall detected"
  pause
}

open_ports() {
  print_header
  echo "=== Open Ports ==="
  sudo ss -tuln
  pause
}

installed_packages() {
  print_header
  echo "=== Installed Packages ==="
  if command -v dpkg &>/dev/null; then
    dpkg -l | less
  elif command -v rpm &>/dev/null; then
    rpm -qa | less
  else
    echo "Package manager not supported"
  fi
  pause
}

top_processes() {
  print_header
  echo "=== Top CPU-consuming Processes ==="
  ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -n 11
  pause
}

uptime_info() {
  print_header
  echo "=== System Uptime ==="
  uptime -p
  pause
}

log_summary() {
  print_header
  echo "=== Logins and Reboots ==="
  last -a | head
  pause
}

kernel_os_info() {
  print_header
  echo "=== Kernel and OS Info ==="
  uname -a
  echo
  cat /etc/os-release
  pause
}

hardware_info() {
  print_header
  echo "=== Hardware Info ==="
  sudo lshw -short
  pause
}

pci_devices() {
  print_header
  echo "=== PCI Devices ==="
  lspci
  pause
}

usb_devices() {
  print_header
  echo "=== USB Devices ==="
  lsusb
  pause
}

dns_info() {
  print_header
  echo "=== DNS Configuration ==="
  cat /etc/resolv.conf
  pause
}

hostname_info() {
  print_header
  echo "=== Hostname Info ==="
  hostnamectl
  pause
}

logged_in_users() {
  print_header
  echo "=== Current Users ==="
  w
  pause
}

system_summary() {
  print_header
  echo "=== System Summary ==="
  echo "Hostname : $(hostname)"
  echo "OS       : $(lsb_release -ds 2>/dev/null || grep PRETTY_NAME /etc/os-release | cut -d= -f2- | tr -d \")"
  echo "Kernel   : $(uname -r)"
  echo "Uptime   : $(uptime -p)"
  echo "CPU      : $(lscpu | grep 'Model name' | sed 's/Model name:[ \t]*//')"
  echo "Memory   : $(free -h | awk '/Mem:/ { print $2 \" total, \" $3 \" used, \" $4 \" free\" }')"
  pause
}

# ---------------------- Menu Loop ----------------------

while true; do
  print_header
  echo "Choose an option:"
  echo " 1) CPU Info"
  echo " 2) Memory Info"
  echo " 3) Disk Usage"
  echo " 4) Block Devices"
  echo " 5) Network Interfaces"
  echo " 6) External IP"
  echo " 7) Firewall Status"
  echo " 8) Open Ports"
  echo " 9) Installed Packages"
  echo "10) Top Processes"
  echo "11) Uptime"
  echo "12) Log Summary"
  echo "13) Kernel and OS Info"
  echo "14) Hardware Info"
  echo "15) PCI Devices"
  echo "16) USB Devices"
  echo "17) DNS Info"
  echo "18) Hostname Info"
  echo "19) Logged-in Users"
  echo "20) System Summary"
  echo " 0) Exit"
  echo

  read -rp "Enter choice [0-20]: " choice

  case $choice in
    1) cpu_info ;;
    2) memory_info ;;
    3) disk_info ;;
    4) block_devices ;;
    5) network_interfaces ;;
    6) public_ip ;;
    7) firewall_status ;;
    8) open_ports ;;
    9) installed_packages ;;
    10) top_processes ;;
    11) uptime_info ;;
    12) log_summary ;;
    13) kernel_os_info ;;
    14) hardware_info ;;
    15) pci_devices ;;
    16) usb_devices ;;
    17) dns_info ;;
    18) hostname_info ;;
    19) logged_in_users ;;
    20) system_summary ;;
    0) echo "Exiting..."; exit ;;
    *) echo "Invalid choice." ; sleep 1 ;;
  esac
done

