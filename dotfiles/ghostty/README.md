# Ghostty Terminal Configuration

Custom terminal setup integrated with modern CLI tools, shell prompt, and system utilities.

---

## Features

**Custom Keybindings** – Vim-style navigation  
**Starship Integration** – Modern shell prompt  
**Zoxide Support** – Smart directory jumping  
**CLI Enhancements** – Colorized listings, fuzzy search, fast text search  
**System Info** – Fastfetch on new tabs  

---

## Keybindings

| Action | Keybind |
|--------|---------|
| New Tab | `Ctrl+Shift+T` |
| Next Tab | `Alt+K` |
| Previous Tab | `Alt+J` |
| Close Tab | `Alt+Backspace` |

---

## Installed Tools

All these tools are already installed and integrated:

| Tool | Purpose |
|------|---------|
| **eza** | Modern `ls` replacement with colors & icons |
| **fzf** | Fuzzy finder for interactive file/history search |
| **ripgrep (rg)** | Lightning-fast text search |
| **zoxide** | Smart directory navigation (`z` command) |
| **tree** | Directory structure visualization |
| **starship** | Modern shell prompt |
| **fastfetch** | System info display |

---

## Configuration Files

```
~/.config/ghostty/config      # Terminal config
~/.config/fastfetch/config    # System info display
~/.bashrc                     # Shell aliases & settings
```

---

## Quick Commands

| Alias | Command |
|-------|---------|
| `update` | `paru -Syyu` |
| `ff` | `fastfetch` |
| `i3` | Start i3 |
| `gnome` | Start GNOME |

**Directory Navigation:**
```bash
z <directory>     # Jump to directory (zoxide)
ls -la            # Modern listing (eza)
tree -L 2         # View directory tree
```

**Searching:**
```bash
rg "pattern"      # Fast text search
fzf               # Interactive file finder
```

---

## Integration

Works seamlessly with:
- Starship (auto-loaded in bashrc)
- Zoxide (`z` command for smart jumping)
- Eza (modern, colorized listings)
- Fzf (fuzzy search & history)
- Ripgrep (lightning-fast text search)
- Tree (directory visualization)
- Fastfetch (system info on startup)
