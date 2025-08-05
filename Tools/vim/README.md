# ✍️ Vim Editor - Basics for DevOps

Vim is one of the most powerful and commonly used text editors in Linux systems.  
As part of my DevOps learning, I practiced using Vim for editing configuration files inside Ubuntu and CentOS VMs.

---

## 🔍 What is Vim?

> Vim is a terminal-based text editor — fast, efficient, and works without a mouse.  
It’s often used by system admins and DevOps engineers to edit files directly on servers.

---

## 🚀 Why I Learned Vim?

- Vim is pre-installed in most Linux servers
- GUI editors like VS Code don’t work on remote systems
- Many DevOps tools (like Ansible, Docker, Jenkins) require quick config file editing

---

## ⚙️ Vim Modes (Very Important)

| Mode | Use |
|------|-----|
| `Normal` | Default mode (for navigation, deleting, copying) |
| `Insert` | For typing text (`i` to enter) |
| `Visual` | For selecting text |
| `Command` | For saving/exiting (`:` to enter) |

---

## 🧠 Commands I Practiced

| Task | Vim Command |
|------|-------------|
| Start insert mode | `i` |
| Save file | `:w` |
| Quit | `:q` |
| Save & Quit | `:wq` |
| Force quit | `:q!` |
| Delete line | `dd` |
| Copy line | `yy` |
| Paste | `p` |
| Search | `/text` then `n` |

---

## 🔄 How I Opened Files

```bash
vim myfile.txt


i - to insert

Esc - to exit insert

:wq - to save and quit

✅ Summary
Vim is a must-know skill for any DevOps engineer.
It saves time, works everywhere, and helps edit files inside any Linux system remotely.