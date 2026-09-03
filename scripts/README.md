# Bash Configuration

Personal `.bashrc` setup for Arch Linux with i3 and GNOME.

## Features

- **Starship prompt**: Modern, customizable shell prompt
- **Zoxide integration**: Smarter directory navigation
- **Custom aliases**: Shortcuts for common commands
- **Fastfetch display**: System info on shell startup

## Aliases

| Alias | Command |
|-------|---------|
| `ls` | `eza --icons=auto` |
| `ll` | `eza -l --icons=auto` |
| `grep` | `grep --color=auto` |
| `bc` | `bluetoothctl` |
| `i3` | `startx` (start i3) |
| `update` | `paru -Syyu` (update system) |
| `gnome` | `sudo systemctl start gdm` (start GNOME) |
| `fastfetch` / `ff` | Display system info |
| `cls` | Clear screen and cd home |

## Tools Used

- **Starship**: Custom shell prompt
- **Zoxide**: Directory jumper (z/zi commands)
- **Fastfetch**: System information display
- **Paru**: AUR package manager

## Installation

Copy `_bashrc` to `~/.bashrc`:

```bash
cp _bashrc ~/.bashrc
source ~/.bashrc
```

Requires:
- starship
- zoxide
- fastfetch
- paru

## Customization

Edit `~/.bashrc` to add more aliases or modify existing ones.
