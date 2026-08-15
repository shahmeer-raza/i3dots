# Polybar Setup Guide

> **⚠️ IMPORTANT:** Install [Paru AUR helper](../../PARU_INSTALL.md) and [i3 dependencies](../I3_DEPENDENCIES.md) first!

---

## Polybar Installation

### Polybar
```bash
sudo pacman -S polybar
```

---

## Required Packages

### Brightness Control
```bash
sudo pacman -S brightnessctl
```

### Audio Control
```bash
sudo pacman -S pulseaudio
```

### Audio Management
```bash
sudo pacman -S wireplumber
```

---

## Required Fonts

### Font Awesome (Icons)
```bash
sudo pacman -S ttf-font-awesome
```

### JetBrains Mono Nerd Font
```bash
paru -S ttf-jetbrains-mono-nerd
```

### Ubuntu Font (Already installed for i3)
```bash
sudo pacman -S ttf-ubuntu-font-family
```

---

## System Dependencies (Already Installed)

These should already be installed from i3 dependencies:

- `network-manager` – WiFi/Network

---

## Configuration

Copy polybar config:

```bash
cp dotfiles/polybar/config.ini ~/.config/polybar/
cp -r dotfiles/polybar/scripts/ ~/.config/polybar/
```

Make scripts executable:

```bash
chmod +x ~/.config/polybar/scripts/*.sh
```

---

## Launch Polybar

From your i3 config, it auto-launches with:

```bash
exec_always --no-startup-id killall -q polybar; polybar mybar &
```

Or manually:

```bash
polybar mybar
```

---

## Troubleshooting

If icons don't show, ensure fonts are installed:

```bash
fc-list | grep -i "font awesome\|jetbrains"
```

Restart polybar if needed:

```bash
killall polybar && polybar mybar &
```
