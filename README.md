# Dotfiles

My personal dotfiles managed with [chezmoi](https://www.chezmoi.io/).

## Overview

- **OS**: CachyOS (Arch Linux-based)
- **Shell**: zsh with [zinit](https://github.com/zdharma-continuum/zinit) plugin manager
- **Prompt**: [starship](https://starship.rs/)
- **Window Manager**: [Niri](https://github.com/YaLTeR/niri) (Wayland compositor)
- **Terminal**: [kitty](https://sw.kovidgoyal.net/kitty/) + tmux
- **Terminal File Manager**: [yazi](https://github.com/sxyazi/yazi)
- **File Manager**: Nautilus (GNOME Files)
- **App Launcher**: [vicinae](https://github.com/vicinaehq/vicinae)
- **Notifications**: [mako](https://github.com/emersion/mako)
- **Editor**: Neovim + VSCodium
- **Browser**: [Zen](https://zen-browser.com/)
- **Theme**: Tokyo Night

## Key Features

### Shell & Terminal

- zsh with zinit plugin manager
- Plugins: zsh-syntax-highlighting, zsh-completions, zsh-autosuggestions, fzf-tab, zsh-history-substring-search
- starship prompt with minimal configuration
- zoxide for smarter cd
- fzf integration
- tmux for terminal multiplexing

### Window Manager (Niri)

- Wayland compositor with dynamic tiling
- Custom keybindings (vim-like navigation)
- Screenshot functionality
- Floating window rules for apps like Nautilus, Calculator, OBS, etc.

### Editor (Neovim)

- Lua-based configuration
- Language-specific ftplugin configurations
- Autocommands for enhanced UX

### Additional Tools

- [picom](https://github.com/yshui/picom) - compositor for transparency/blur
- [dunst](https://dunst-project.org/) - notification daemon
- [swaylock](https://github.com/swaywm/swaylock) - screen locker
- [wlogout](https://github.com/ArtsyMacaw/wlogout) - logout menu
- [wofi](https://github.com/Arian8j2/wofi) - app launcher
- [rofi](https://github.com/davatorium/rofi) - alternative app launcher

## Installation

1. Install chezmoi:

   ```bash
   sh -c "$(curl -fsSL https://get.chezmoi.io)"
   ```

2. Initialize my dotfiles:

   ```bash
   chezmoi init --source https://github.com/0xElsharawy/dotfiles
   ```

3. Apply the dotfiles:
   ```bash
   chezmoi apply
   ```

## Requirements

- CachyOS or Arch Linux-based distribution
- Wayland session (for Niri)
- The following packages should be installed:
  - zsh, zinit, starship, zoxide, fzf
  - kitty, tmux
  - niri, mako, swaylock
  - neovim, codium (VSCodium)
  - yazi, nautilus
  - vicinae or another app launcher
  - JetBrains Mono Nerd Font (or another Nerd Font)

## Keybindings

### Niri (Window Manager)

| Key                | Action                      |
| ------------------ | --------------------------- |
| `Mod+Return`       | Open terminal (kitty)       |
| `Mod+M`            | Open app launcher (vicinae) |
| `Mod+X`            | Lock screen (swaylock)      |
| `Mod+P`            | Open powermenu (wlogout)    |
| `Mod+Y`            | Open clipboard manager      |
| `Mod+O`            | Toggle overview             |
| `Mod+Shift+B`      | Change wallpaper            |
| `Mod+Q`            | Close window                |
| `Mod+H/J/K/L`      | Focus window (vim-like)     |
| `Mod+Ctrl+H/J/K/L` | Move window                 |
| `Mod+1-9`          | Switch to workspace         |
| `Mod+Shift+1-9`    | Move window to workspace    |
| `Mod+R`            | Switch column width preset  |
| `Mod+F`            | Maximize column             |
| `Mod+V`            | Toggle floating             |

### zsh

| Key      | Action                  |
| -------- | ----------------------- |
| `Ctrl+p` | History search backward |
| `Ctrl+n` | History search forward  |
| `Tab`    | Completion menu         |

## File Structure

```
.
├── dot_zshrc                      # zsh configuration
├── dot_gitconfig                  # git configuration
├── private_dot_config/
│   ├── niri/config.kdl           # Niri window manager
│   ├── starship.toml             # Starship prompt
│   ├── tmux/tmux.conf             # tmux configuration
│   ├── nvim/                      # Neovim configuration
│   ├── kitty/                     # kitty terminal
│   ├── alacritty/                 # alacritty terminal
│   ├── yazi/                      # yazi file manager
│   ├── mako/                      # notification daemon
│   ├── dunst/                     # notification daemon
│   ├── picom/                     # compositor
│   ├── swaylock/                  # screen locker
│   ├── wlogout/                   # logout menu
│   ├── waybar/                    # status bar
│   ├── polybar/                   # status bar
│   ├── rofi/                      # app launcher
│   ├── wofi/                      # app launcher
│   ├── ohmyposh/                  # prompt (deprecated, now using starship)
│   ├── zathura/                   # PDF viewer
│   ├── shell/                     # shell scripts
│   ├── scripts/                   # custom scripts
│   └── VSCodium/                  # VSCodium settings
└── assets/                        # images for README
```
