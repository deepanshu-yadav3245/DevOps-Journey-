VM Setup – V Profile Project
📌 Introduction to VM Setup

In this section, we will set up the Virtual Machines (VMs) required for the V Profile Project using a Vagrantfile.
All configuration is already available in the source code repository:

👉 hkhcoders/vprofile-project

📥 Cloning the Source Code
Open VS Code (or any editor).

Copy the repository HTTPS URL.

Clone the repository:

git clone https://github.com/hkhcoders/vprofile-project.git


Move into the project folder:

cd vprofile-project


Switch to the correct branch (local):

git checkout local

📂 Exploring the Source Code Structure

Open the vagrant folder.

Inside, you will see multiple subfolders for provisioning:

manual-provisioning-windows-mac-intel → for Windows, Mac Intel, Linux.

manual-provisioning-mac-m1m2m3 → for Mac M1/M2/M3 chips.

Each folder contains:

Vagrantfile → defines VM setup.

PDF Instructions → setup guide.

✅ Prerequisites

Before running Vagrant, install the following:

Oracle VM VirtualBox

Vagrant

Vagrant Plugin: vagrant-hostmanager

Install plugin:

vagrant plugin install vagrant-hostmanager


This plugin updates hostnames and /etc/hosts entries automatically for all VMs.

⚙️ VM Setup Steps

Go to the correct folder (based on your OS):

cd vagrant/manual-provisioning-windows-mac-intel


Check for existing VMs:

vagrant global-status


Destroy old VMs if needed:

vagrant destroy


Clean up stale entries:

vagrant global-status --prune


Bring up the new VMs:

vagrant up

🖥️ Vagrantfile Configuration

The multi-VM Vagrantfile includes 5 VMs:

VM Name	Service	Memory	OS
db01	MySQL	600MB	CentOS 9
mc01	Memcache	600MB	CentOS 9
rmq01	RabbitMQ	600MB	CentOS 9
app01	Tomcat	800MB	CentOS 9
web01	Nginx	800MB	Ubuntu

🔹 Memory can be increased up to 1024 MB per VM if your system has more RAM.
🔹 For Mac M1/M2/M3, box names differ but structure is same.

🔗 Hostname and Hosts File Automation

vagrant-hostmanager plugin automatically updates /etc/hosts.

Config inside Vagrantfile:

config.hostmanager.enabled = true
config.hostmanager.manage_host = true


Example of /etc/hosts entries after setup:

192.168.56.21   db01
192.168.56.22   mc01
192.168.56.23   rmq01
192.168.56.24   app01
192.168.56.25   web01

📋 Service Setup Order

When starting services:

MySQL (db01)

Memcache (mc01)

RabbitMQ (rmq01)

Tomcat (app01)

Nginx (web01)

When shutting down, follow the reverse order.

🔐 Logging into VMs

Login to any VM using SSH. Example:

vagrant ssh web01


Switch to root user:

sudo -i


Check /etc/hosts:

cat /etc/hosts

🌐 Testing Connectivity

Ping other VMs by hostname:

ping app01 -c 4


If no response → reboot the VM.

📝 Exercise

SSH into each machine.

Ping backend services (mc01, rmq01, db01).

Reboot if any machine is not responding.

🎯 Key Takeaways

Set up multi-VM environment using Vagrantfile.

Always switch to local branch before setup.

Install vagrant-hostmanager for automatic hostname mapping.

Follow correct service startup/shutdown order.

Use ping tests to verify VM connectivity.