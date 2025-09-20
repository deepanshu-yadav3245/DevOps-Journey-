# 📜 Basic Linux Commands for Beginners

Linux commands are instructions given to the terminal to perform tasks like file navigation, management, and system monitoring.

---

## 📂 Navigation & Directory Commands
| Command | Description | Example |
|---------|-------------|---------|
| `pwd` | Shows current directory | `pwd` |
| `ls` | Lists files & folders | `ls -l` |
| `cd` | Change directory | `cd /home/user` |
| `cd ..` | Go up one level | `cd ..` |

---

## 📄 File & Folder Management
| Command | Description | Example |
|---------|-------------|---------|
| `touch` | Create empty file | `touch notes.txt` |
| `mkdir` | Create new folder | `mkdir projects` |
| `cp` | Copy file/folder | `cp file.txt /backup/` |
| `mv` | Move or rename | `mv file.txt /backup/` |
| `rm` | Remove file/folder | `rm file.txt` / `rm -r folder` |

---

## 📖 Viewing & Editing Files
| Command | Description | Example |
|---------|-------------|---------|
| `cat` | View file contents | `cat notes.txt` |
| `echo` | Print text or append to file | `echo "Hello" >> notes.txt` |
| `nano` | Edit file in Nano editor | `nano notes.txt` |
| `vim` | Edit file in Vim editor | `vim notes.txt` |

---

## ⚙ System & Help Commands
| Command | Description | Example |
|---------|-------------|---------|
| `man` | Show manual page | `man ls` |
| `clear` | Clear terminal screen | `clear` |
| `whoami` | Show current username | `whoami` |
| `uname -a` | Show system info | `uname -a` |

---

## 💡 Pro Tips
- Use **Tab** to auto-complete commands or file names
- Use **↑ / ↓** arrow keys to scroll through command history.
- Combine commands with `&&`:
```bash
mkdir test && cd test.
