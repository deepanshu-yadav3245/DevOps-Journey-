# ✏️ Vim Editor Basics

## 📌 Introduction
Vim (Vi IMproved) is a **powerful, terminal-based text editor** for Unix/Linux systems.  
It is an improved version of the older **Vi editor**, with more features like syntax highlighting, undo/redo, and multi-level buffers.

---

## 🔑 Key Features
- Lightweight and available on almost all Unix/Linux systems
- Keyboard-based editing (no mouse needed)
- Syntax highlighting for programming
- Multiple modes for efficient editing
- Highly customizable via `.vimrc`

---

## 🎯 Why Learn Vim in DevOps?
- Most cloud servers (AWS EC2, DigitalOcean, etc.) have Vim pre-installed
- Editing configuration files (`/etc/...`) directly from terminal
- Faster workflow once you master commands

---

## 🛠 Vim Modes
Vim works in **different modes**:

| Mode | Purpose | How to Enter | How to Exit |
|------|---------|--------------|-------------|
| **Normal Mode** | Default mode for navigation & commands | Press `Esc` | N/A |
| **Insert Mode** | For typing text | Press `i`, `a`, or `o` | `Esc` |
| **Visual Mode** | For selecting text | Press `v` (char-wise) or `V` (line-wise) | `Esc` |
| **Command Mode** | For saving, quitting, searching | Press `:` | `Enter` |

---

## 📖 Basic Usage
1. **Open a file**:
   ```bash
   vim filename.txt
