# i3dots

My personal dotfiles and configuration for i3 window manager on Arch Linux.

---

## Quick Start

Before you begin, make sure to install the AUR helper:

[Paru Installation Guide](./PARU_INSTALL.md)

Then follow the installation guides in order:

1. [i3 Dependencies & Tools](./dotfiles/I3_DEPENDENCIES.md)
2. [Polybar Setup](./dotfiles/polybar/SETUP.md)

---

## Contents

- **dotfiles/** - Main configuration files
  - **i3/** - i3 window manager config and bindings
  - **polybar/** - Polybar status bar config and functionality scripts
    - **scripts/** - Polybar module scripts (powermenu, wifi-rofi, etc.)
  - **picom/** - Compositor configuration
  - **rofi/** - Application launcher config
  - **other configs** - Various tool configurations

- **scripts/** - Shell configuration and setup files
  - **.bashrc** - Bash shell configuration
  - **.inputrc** - Readline input configuration

- **ffconfigs/** - Link to community fastfetch configs repository

- **mirrorlist** - Pacman mirror configuration

---

## Installation

Clone the repository:

```bash
git clone https://github.com/shahmeer-raza/i3dots.git
cd i3dots
```

Install all dependencies following the guides above.

Copy dotfiles to your config directory:

```bash
cp -r dotfiles/* ~/.config/
```

Copy shell configurations to home directory:

```bash
cp scripts/.bashrc ~/
cp scripts/.inputrc ~/
```

Make polybar scripts executable:

```bash
chmod +x ~/.config/polybar/scripts/*.sh
```

Restart i3 to apply changes:

```bash
$mod + Shift + R
```

---

## Key Bindings

Terminal: `Super + Return`

Application Launcher: `Super + Space`

File Manager: `Super + N`

Browser: `Super + B`

Lock Screen: `Super + L`

Volume Up: `F10`

Volume Down: `F9`

Brightness Up: `F7`

Brightness Down: `F6`

See full config at `dotfiles/i3/config`

---

## System Info

- OS: Arch Linux
- Window Manager: i3-gaps
- Status Bar: Polybar
- Terminal: Ghostty
- Compositor: Picom
- Font: Ubuntu

---

## About

Maintained by a BS Cyber Security student running Arch Linux with i3 and GNOME.

---

## License

These are personal dotfiles. Feel free to use and modify as needed.
