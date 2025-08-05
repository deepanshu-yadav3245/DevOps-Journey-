# 🐧 Ubuntu Setup & Basics

Welcome to my **Ubuntu setup guide** – part of my DevOps learning journey.  
This covers what Ubuntu is, why it's important, and how I set it up for hands-on practice using Vagrant and VirtualBox.

---

## 🔍 What is Ubuntu?

> Ubuntu is a free and open-source Linux-based operating system.  
It is commonly used on servers and cloud systems — making it an essential skill for DevOps engineers.

---

## 🚀 Why Ubuntu in DevOps?

- Most cloud platforms (like AWS, Azure) use Ubuntu-based servers
- Helps learn real-world Linux commands and configurations
- Widely used with tools like Docker, Jenkins, Ansible, Kubernetes

---

## ⚙️ My Setup Method

I used **Vagrant + VirtualBox** to run Ubuntu on my Windows machine.

### 🛠️ Prerequisites

- [VirtualBox](https://www.virtualbox.org/)
- [Vagrant](https://www.vagrantup.com/)
- Git Bash or VS Code terminal

---

## 📦 Vagrant Configuration (Vagrantfile)

```ruby
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
end


▶️ Setup Steps

# Step 1: Create project folder
mkdir ubuntu-vm && cd ubuntu-vm

# Step 2: Initialize Ubuntu box
vagrant init ubuntu/bionic64

# Step 3: Start the virtual machine
vagrant up

# Step 4: SSH into Ubuntu
vagrant ssh

📌 Notes
Used vagrant halt to stop VM

Used vagrant destroy to remove VM


🧠 Commands I Practiced

| Command            | Description            |
| ------------------ | ---------------------- |
| `ls`               | List files/directories |
| `cd`               | Change directory       |
| `mkdir`            | Make a directory       |
| `touch`            | Create empty file      |
| `vim`              | Edit files in terminal |
| `sudo apt update`  | Update package index   |
| `sudo apt install` | Install new packages   |
