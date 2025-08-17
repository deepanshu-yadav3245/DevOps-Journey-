
---

## 📄 `commands.md`

```markdown
# ⚡ Linux User & Group Management — Command Guide

A quick, practical reference for managing users, groups, and permissions in Linux.  
Essential for day-to-day DevOps tasks. 🚀

---

## 👤 User Management

| Command | Purpose | Example |
|---------|----------|---------|
| `whoami` | Display current logged-in user | `whoami` |
| `id <user>` | Show UID, GID, groups of a user | `id devops` |
| `useradd <name>` | Create new user | `sudo useradd ansible` |
| `passwd <name>` | Set or change password | `sudo passwd ansible` |
| `usermod -aG <group> <user>` | Add user to group | `sudo usermod -aG docker jenkins` |
| `userdel <name>` | Remove user | `sudo userdel jenkins` |

---

## 👥 Group Management

| Command | Purpose | Example |
|---------|----------|---------|
| `groupadd <name>` | Create a group | `sudo groupadd devops` |
| `groups <user>` | Show groups for a user | `groups ansible` |
| `gpasswd -a <user> <group>` | Add user to group | `sudo gpasswd -a ansible devops` |
| `gpasswd -d <user> <group>` | Remove user from group | `sudo gpasswd -d ansible devops` |
| `groupdel <name>` | Delete group | `sudo groupdel devops` |

---

## 🔐 File Permissions & Ownership

| Command | Purpose | Example |
|---------|----------|---------|
| `ls -l` | Show file permissions | `ls -l file.txt` |
| `chmod <perm> <file>` | Change permissions | `chmod 755 script.sh` |
| `chown <user>:<group> <file>` | Change owner & group | `sudo chown ansible:devops project/` |
| `umask` | Show default permissions | `umask` |

---

## 📊 Special Permissions

| Mode | Description | Example |
|------|-------------|---------|
| `chmod u+s file` | Set SUID (run as owner) | `/usr/bin/passwd` |
| `chmod g+s dir` | Set SGID (inherit group) | `chmod g+s shared/` |
| `chmod +t dir` | Set Sticky Bit (restrict delete) | `chmod +t /tmp` |

---

## 🚀 Real-World Examples

### Create a DevOps Team
```bash
sudo groupadd devops
sudo useradd -m ansible
sudo useradd -m jenkins
sudo usermod -aG devops ansible
sudo usermod -aG devops jenkins
