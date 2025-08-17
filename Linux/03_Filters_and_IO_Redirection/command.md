# ⚡ Linux Filters & I/O Redirection — Command Reference

This file contains **all important commands** related to **redirection, pipes, and filters**.  
It is designed as a **cheat sheet** + **reference guide** 🚀  

---

## 🔄 I/O Redirection Commands

| Command | Description | Example |
|---------|-------------|---------|
| `>`     | Redirect **STDOUT** to file (overwrite) | `ls > output.txt` |
| `>>`    | Redirect **STDOUT** to file (append) | `echo "log" >> app.log` |
| `<`     | Redirect file as **STDIN** | `sort < names.txt` |
| `2>`    | Redirect **STDERR** (error output) | `ls /fakepath 2> error.log` |
| `&>`    | Redirect **STDOUT + STDERR** | `command &> all.log` |
| `/dev/null` | Discard output (black hole) | `ls /fakepath 2> /dev/null` |

📌 **Tip**: Separate logs and errors for debugging:
```bash
myapp > output.log 2> error.log
