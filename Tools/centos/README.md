# 📦 CentOS Setup & Practice

Part of my DevOps learning journey — this file covers how I set up **CentOS** on my system using Vagrant and VirtualBox, and what commands I practiced.

---

## 🔍 What is CentOS?

> CentOS is a Linux distribution based on Red Hat Enterprise Linux (RHEL).  
It’s used in many production servers in real companies because of its stability and long-term support.

---

## ⚙️ Why I Practiced CentOS?

- To understand how enterprise-grade Linux systems work
- To get comfortable with **yum** package manager (used in CentOS/RHEL)
- Many real-world servers run on CentOS (or now AlmaLinux/Rocky Linux)

---

## 🛠️ Setup using Vagrant

I used the official `centos/7` box to run CentOS in a virtual machine.

### 📁 Vagrantfile

```ruby
Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
end


▶️ Setup Steps
# Step 1: Create project folder
mkdir centos-vm && cd centos-vm

# Step 2: Initialize Vagrant
vagrant init centos/7

# Step 3: Start VM
vagrant up

# Step 4: Connect to CentOS
vagrant ssh


🧠 Commands I Practiced
| Command              | Description          |
| -------------------- | -------------------- |
| `yum update -y`      | Update all packages  |
| `yum install vim -y` | Install Vim editor   |
| `ls`, `cd`, `mkdir`  | Basic navigation     |
| `sudo`               | Run command as admin |
| `cat`, `touch`       | File handling        |
