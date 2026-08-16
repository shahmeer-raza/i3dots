# Ghostty Terminal Configuration

Terminal emulator setup with custom keybindings, integrated with Starship prompt and Zoxide.

## Features

- **Custom keybindings**: Vim-style navigation
- **Starship integration**: Modern prompt display
- **Zoxide support**: Smart directory jumping
- **Fastfetch display**: System info on new tab

## Keybindings

| Action | Keybind |
|--------|---------|
| New Tab | Ctrl+Shift+T |
| Next Tab | Alt+K |
| Previous Tab | Alt+J |
| Close Tab | Alt+Backspace |

## Configuration Files

- `config.jsonc` - Ghostty terminal config
- `fastfetch.jsonc` - System info display
- `_bashrc` - Shell configuration with aliases

## Setup

### Ghostty Config

```bash
cp config.jsonc ~/.config/ghostty/config
```

### Bash Config

```bash
cp _bashrc ~/.bashrc
source ~/.bashrc
```

### Dependencies

- ghostty
- starship
- zoxide
- fastfetch
- paru

## Usage

```bash
# Open new tab
Ctrl+Shift+T

# Navigate tabs (vim-style)
Alt+K (next)
Alt+J (previous)

# Close tab
Alt+Backspace

# Quick commands
update      # paru -Syyu
ff          # fastfetch display
i3          # start i3
gnome       # start GNOME
```

## Integration

Ghostty works seamlessly with:
- Starship prompt (auto-loaded in bashrc)
- Zoxide directory jumping (z command)
- Custom aliases from bashrc
