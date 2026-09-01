# i3 Configuration Dependencies & Installation Guide

> **⚠️ IMPORTANT:** Install [Paru AUR helper](../PARU_INSTALL.md) first before proceeding!

---

## Core i3 & Window Manager

### i3 Window Manager
sudo pacman -S i3-gaps

### i3 Status Bar Alternative (Polybar)
sudo pacman -S polybar

---

## Terminal & Shell

### Ghostty Terminal
paru -S ghostty

---

## System Utilities

### Network Manager Applet
sudo pacman -S network-manager-applet

### File Manager (Thunar)
sudo pacman -S thunar

### Rofi (Application Launcher)
sudo pacman -S rofi

### Wallpaper Manager (Feh)
sudo pacman -S feh

### Compositor (Picom)
sudo pacman -S picom

### Better Lockscreen
paru -S betterlockscreen

### Brightness Control (brightnessctl)
sudo pacman -S brightnessctl

### Volume Control (wireplumber)
sudo pacman -S wireplumber

### Clipboard (xclip) 
sudo pacman -S xclip 

### Screenshot Tool (Scrot)
sudo pacman -S scrot

### D-Bus (System Message Bus)
sudo pacman -S dbus

### Desktop Entry Execution (dex)
sudo pacman -S dex

---

## Command Line Tools & Shell Utilities

### Eza (Modern Replacement for ls)
sudo pacman -S eza

### Fzf (Fuzzy Finder)
sudo pacman -S fzf

### Ripgrep (Fast Text Search)
sudo pacman -S ripgrep

### Zoxide (Smart Directory Navigation)
sudo pacman -S zoxide

### Tree (Directory Tree Viewer)
sudo pacman -S tree

---

## Browsers & Web Tools

### Brave Browser
paru -S brave-browser

---

## Development & Text Editors

### Visual Studio Code
paru -S visual-studio-code-bin

---

## Media & Entertainment

### MPV (Media Player)
sudo pacman -S mpv

---

## Shell & Prompt

### Starship (Modern Shell Prompt)
sudo pacman -S starship

---

## Fonts

### JetBrains Font (Used in i3 config)
sudo pacman -S ttf-jetbrains-mono

### Font Awesome 6 (For Icons in Polybar)
sudo pacman -S otf-font-awesome

---

## All-in-One Installation

Copy and run this script to install everything at once:

#!/bin/bash

echo "Installing i3 dependencies..."

# Core
sudo pacman -S i3-gaps polybar

# Terminal
paru -S ghostty

# System Utils
sudo pacman -S network-manager-applet thunar rofi feh picom brightnessctl wireplumber scrot dbus dex xclip

# CLI Tools
sudo pacman -S eza fzf ripgrep zoxide tree

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
sudo pacman -S ttf-jetbrains-mono otf-font-awesome

echo "✅ All dependencies installed!"

Save as install_deps.sh, make executable, and run:
chmod +x install_deps.sh
./install_deps.sh
