# 🔄 Filters & I/O Redirection in Linux

## 📌 Introduction
Filters and I/O redirection in Linux allow you to **control input/output** and **manipulate data efficiently**.  
They are widely used in shell scripting, automation, and log analysis.

---

## 🎯 Input / Output Redirection

| Symbol | Description | Example |
|--------|-------------|---------|
| `>` | Redirect output (overwrite file) | `ls > output.txt` |
| `>>` | Redirect output (append file) | `echo "Hi" >> notes.txt` |
| `<` | Use file as input | `sort < names.txt` |
| `2>` | Redirect errors | `ls /wrong/path 2> errors.log` |
| `&>` | Redirect both output + error | `command &> all.log` |

---

## 🛠 Common Filters

| Command | Description |
|---------|-------------|
| `cat` | Display file contents |
| `head` | Show first lines |
| `tail` | Show last lines |
| `sort` | Sort lines |
| `uniq` | Remove duplicate lines |
| `wc` | Count words/lines/characters |
| `grep` | Search for patterns |
| `cut` | Extract columns from text |

---

## 🔗 Piping Commands
You can **chain filters** using `|` (pipe).  
Example:
```bash
cat access.log | grep "ERROR" | sort | uniq -c


🔗 Piping ( | )

Pipes let you connect multiple commands so the output of one becomes the input of the next.
This enables building powerful one-liners.

Example:--

(1) - cat access.log | grep "404" | cut -d' ' -f1 | sort | uniq -c | sort -nr
