# Installing Paru on Arch Linux

**Paru** is an AUR helper for Arch Linux. It's basically `pacman` but cooler – installs from AUR easily.

## Prerequisites

Make sure you have:
- Base development tools: `base-devel` group
- Git

```bash
sudo pacman -S base-devel git
```

## Installation

### 1. Clone paru repo
```bash
git clone https://aur.archlinux.org/paru.git
cd paru
```

### 2. Build and install
```bash
makepkg -si
```

This builds paru and installs it (`-s` = sync deps, `-i` = install).

### 3. Verify installation
```bash
paru --version
```

## Usage

**Update system:**
```bash
paru -Syyu
```

**Install package (AUR or official):**
```bash
paru -S package-name
```

**Search:**
```bash
paru package-name
```

**Remove:**
```bash
paru -R package-name
```

## Notes

- Paru asks before installing (interactive)
- First run might take time (syncing databases)
- You can use `paru` just like `pacman`

That's it!
