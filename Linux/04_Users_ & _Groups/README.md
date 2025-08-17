# 👥 Linux Users & Groups

In Linux, **users and groups** form the foundation of system security and access control.  
Every file, process, and service runs under a user and belongs to a group.  
As a DevOps engineer, mastering this ensures **secure, scalable, and collaborative environments**.

---

## 🔑 Core Concepts

### 👤 Users
- **Root User (UID 0):** Super administrator with unrestricted privileges.  
- **System Users:** Created for services (e.g., `nginx`, `mysql`).  
- **Regular Users:** Created for human users to perform daily tasks.  
- Identified by **UID (User ID)**.

---

### 👥 Groups
- A **group** is a collection of users.  
- Helps manage permissions collectively.  
- Identified by **GID (Group ID)**.  
- Example: Add all developers to a `devops` group to simplify access control.

---

### 🔐 File Permissions (r, w, x)
- **r** → Read  
- **w** → Write  
- **x** → Execute  

Example:
```bash
-rwxr-xr--  1 user group   1024 Aug 17  script.sh

Owner → Full rights (rwx)

Group → Read & execute (r-x)

Others → Read only (r--)

🏷 Ownership

User ownership: Who owns the file.

Group ownership: Which group owns the file.

Managed via chown and chgrp.


⚡ Special Permissions


SUID (Set User ID): File runs with owner’s privileges.

SGID (Set Group ID): Files in a directory inherit group ownership.

Sticky Bit: Only file owner can delete files in a shared directory (e.g., /tmp).



🚀 Why It Matters in DevOps

Tools like Jenkins, Docker, Ansible, Kubernetes run under their own users.

Correct permissions = fewer security risks.

Groups make team collaboration easier (shared projects, CI/CD pipelines).