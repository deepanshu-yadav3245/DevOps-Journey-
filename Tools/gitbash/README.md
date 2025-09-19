# 💻 Git Bash - My Linux Terminal on Windows

As part of my DevOps journey, I used **Git Bash** to practice Linux commands on my Windows laptop.  
It gave me a Unix-like terminal experience without needing a full Linux OS.

---

## 🔍 What is Git Bash?

> Git Bash is a command-line tool for Windows that lets you run Git commands **and** basic Unix/Linux commands like `ls`, `cd`, `mkdir`, etc.

It comes bundled with Git for Windows and is very helpful for DevOps beginners.

---

## 🚀 Why I Used Git Bash?

- To practice basic Linux commands
- To use Git version control locally
- To run shell commands without installing full Linux.
- To interact with GitHub using terminal.

---

## ⚙️ How I Installed It

1. Downloaded from [git-scm.com](https://git-scm.com/)
2. Installed with default options
3. Right-click on desktop or folder → **Git Bash Here**

---

## 🧠 Commands I Practiced

| Command | Description |
|---------|-------------|
| `ls` | List files |
| `pwd` | Show current directory |
| `cd folder/` | Change directory |
| `mkdir test` | Create folder |
| `touch file.txt` | Create file |
| `vim file.txt` | Open file in Vim |
| `git init` | Initialize Git repo |
| `git status` | Show current Git status |
| `git add .` | Add changes |
| `git commit -m "msg"` | Save changes |
| `git push` | Push to GitHub |

---

## 🔁 Example Git Workflow

```bash
git init
git add .
git commit -m "Initial commit"
git remote add origin https://github.com/username/repo.git
git push -u origin main
