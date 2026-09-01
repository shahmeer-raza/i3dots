# i3 Configuration Dependencies & Installation Guide

> **⚠️ IMPORTANT:** Install [Paru AUR helper](../PARU_INSTALL.md) first before proceeding!

---

## Core i3 & Window Manager

```bash
sudo pacman -S i3-gaps polybar
```

---

## Terminal & Shell

```bash
paru -S ghostty
sudo pacman -S starship
```

---

## System Utilities

```bash
sudo pacman -S network-manager-applet thunar rofi feh picom brightnessctl wireplumber scrot dbus dex xclip
paru -S betterlockscreen
```

---

## Command Line Tools & Shell Utilities

### Eza (Modern Replacement for ls)
```bash
sudo pacman -S eza
```

### Fzf (Fuzzy Finder)
```bash
sudo pacman -S fzf
```

### Ripgrep (Fast Text Search)
```bash
sudo pacman -S ripgrep
```

### Zoxide (Smart Directory Navigation)
```bash
sudo pacman -S zoxide
```

### Tree (Directory Tree Viewer)
```bash
sudo pacman -S tree
```

---

## Browsers & Development

```bash
paru -S brave-browser visual-studio-code-bin
```

---

## Media & Utilities

```bash
sudo pacman -S mpv fastfetch
```

---

## Fonts

```bash
sudo pacman -S ttf-jetbrains-mono otf-font-awesome
```

---

## Quick Install Script

Save as `install_deps.sh` and run:

```bash
#!/bin/bash
echo "Installing i3 dependencies..."

# Core
sudo pacman -S i3-gaps polybar

# Terminal
paru -S ghostty
sudo pacman -S starship

# System Utils
sudo pacman -S network-manager-applet thunar rofi feh picom brightnessctl wireplumber scrot dbus dex xclip
paru -S betterlockscreen

# Browsers & Dev
paru -S brave-browser visual-studio-code-bin

# Media & Utils
sudo pacman -S mpv fastfetch

# Fonts
sudo pacman -S ttf-jetbrains-mono otf-font-awesome

echo "✅ All dependencies installed!"
```

Run it:
```bash
chmod +x install_deps.sh
./install_deps.sh
```
