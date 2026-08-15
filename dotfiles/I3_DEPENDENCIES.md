# i3 Configuration Dependencies & Installation Guide

> **⚠️ IMPORTANT:** Install [Paru AUR helper](../PARU_INSTALL.md) first before proceeding!

---

## Core i3 & Window Manager

### i3 Window Manager
```bash
sudo pacman -S i3-gaps
```

### i3 Status Bar Alternative (Polybar)
```bash
sudo pacman -S polybar
```

---

## Terminal & Shell

### Ghostty Terminal
```bash
paru -S ghostty
```

---

## System Utilities

### Network Manager Applet
```bash
sudo pacman -S network-manager-applet
```

### File Manager (Thunar)
```bash
sudo pacman -S thunar
```

### Rofi (Application Launcher)
```bash
sudo pacman -S rofi
```

### Wallpaper Manager (Feh)
```bash
sudo pacman -S feh
```

### Compositor (Picom)
```bash
sudo pacman -S picom
```

### Better Lockscreen
```bash
paru -S betterlockscreen
```

### Brightness Control (brightnessctl)
```bash
sudo pacman -S brightnessctl
```

### Volume Control (wireplumber)
```bash
sudo pacman -S wireplumber
```

### Screenshot Tool (Scrot)
```bash
sudo pacman -S scrot
```

### D-Bus (System Message Bus)
```bash
sudo pacman -S dbus
```

### Desktop Entry Execution (dex)
```bash
sudo pacman -S dex
```

---

## Browsers & Web Tools

### Brave Browser
```bash
paru -S brave-browser
```

---

## Development & Text Editors

### Visual Studio Code
```bash
paru -S visual-studio-code-bin
```

---

## Media & Entertainment

### MPV (Media Player)
```bash
sudo pacman -S mpv
```

---

## Shell & Prompt

### Starship (Modern Shell Prompt)
```bash
sudo pacman -S starship
```

### Zoxide (Smart Directory Navigation)
```bash
sudo pacman -S zoxide
```

---

## Fonts

### Ubuntu Font (Used in i3 config)
```bash
sudo pacman -S ttf-ubuntu-font-family
```

### Nerd Fonts (For Icons in Polybar)
```bash
paru -S nerd-fonts-ubuntu-mono
```

---

## All-in-One Installation

Copy and run this script to install everything at once:

```bash
#!/bin/bash

echo "Installing i3 dependencies..."

# Core
sudo pacman -S i3-gaps polybar

# Terminal
paru -S ghostty

# System Utils
sudo pacman -S network-manager-applet thunar rofi feh picom brightnessctl wireplumber scrot dbus dex zoxide

# Better Lockscreen
paru -S betterlockscreen

# Browsers
paru -S brave-browser

# Development
paru -S visual-studio-code-bin

# Media
sudo pacman -S mpv

# Shell & Prompt
sudo pacman -S starship

# Fonts
sudo pacman -S ttf-ubuntu-font-family
paru -S nerd-fonts-ubuntu-mono

echo "✅ All dependencies installed!"
```

Save as `install_deps.sh`, make executable, and run:
```bash
chmod +x install_deps.sh
./install_deps.sh
```
