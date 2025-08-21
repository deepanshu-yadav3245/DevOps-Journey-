# 🔑 Understanding `sudo` in Linux

`sudo` (short for **Super User DO**) is a powerful Linux command that allows a permitted user to run a command as the **superuser (root)** or another user, as specified by the security policy.

It is commonly used for administrative tasks such as installing software, changing configurations, or managing system processes.  
**⚠️ Misuse of `sudo` can harm your system, so use it wisely.**

---

## 🛠️ Why `sudo`?
- Provides **temporary administrative privileges** without logging in as `root`.
- Keeps a record of all commands executed with elevated privileges.
- Allows **fine-grained access control** via the `/etc/sudoers` file.
- Enhances system security by minimizing root exposure.

---

## ⚙️ Basic Usage
```bash
sudo <command>


Example:

--sudo apt update