# i3 Dotfiles
## Installation
Clone the repo and create symlinks:
```bash
git clone https://github.com/shahmeer-raza/i3dots ~/i3dots
cd ~/.config
ln -s ~/i3dots/dotfiles/* .
```

Reload i3:
```bash
i3-msg restart
```

## Documentation
Check individual README files for detailed configuration:
- `i3/I3_DEPENDENCIES.md` - i3 dependencies and setup
- `polybar/readme.md` - Polybar configuration
