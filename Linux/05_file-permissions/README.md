# 🔐 Linux File Permissions Guide

Understanding and managing **file permissions** in Linux is crucial for security, collaboration, and system administration.  
This guide provides a clear explanation of file permissions and essential commands you will use daily.

---

## 📌 Basics of File Permissions

Linux uses **three permission types** for **three categories of users**:

### Permission Types:
- **r (read)** → View file contents / list directory
- **w (write)** → Modify file contents / create/delete files in directory
- **x (execute)** → Run a file as a program / enter a directory

### User Categories:
- **u (user)** → The file owner
- **g (group)** → Users belonging to the file’s group
- **o (others)** → All other users
- **a (all)** → Shortcut for u+g+o

---

## 📖 Viewing Permissions

```bash
# List files with detailed permissions
ls -l

# Example output:
-rwxr-xr--  1 user group  1024 Aug 20 12:00 script.sh

Breakdown:

- → File type (- = file, d = directory, l = link)

rwx → Owner permissions

r-x → Group permissions

r-- → Other users permissions