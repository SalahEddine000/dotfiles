# Dotfiles

Personal configuration files for Linux desktop environment.

## Structure

```
dotfiles/
├── hypr/       # Hyprland (Wayland compositor)
├── kitty/      # Kitty terminal emulator
├── lazyvim/    # LazyVim Neovim distribution
├── nvim/       # Neovim configuration
├── tmux/       # Tmux terminal multiplexer
├── tmuxifier/  # Tmuxifier session manager
└── zsh/        # Zsh shell
```

## Applications

| Directory | Application | Description |
|-----------|------------|-------------|
| hypr/ | Hyprland | Window manager with animations, themes, and workflow configurations |
| kitty/ | Kitty | GPU-accelerated terminal emulator |
| lazyvim/ | LazyVim | Neovim distribution with custom plugins |
| nvim/ | Neovim | Standalone Neovim setup |
| tmux/ | Tmux | Terminal multiplexer with Tokyo Night theme |
| tmuxifier/ | Tmuxifier | Tmux session layout manager |
| zsh/ | Zsh | Shell with custom prompts, functions, and completions |

## Installation

Clone the repository:

```bash
git clone https://github.com/yourusername/dotfiles.git ~/dotfiles
```

Create symbolic links to the configuration directories:

```bash
# Hyprland
ln -sf ~/dotfiles/hypr/.config/hypr ~/.config/hypr

# Kitty
ln -sf ~/dotfiles/kitty/.config/kitty ~/.config/kitty

# LazyVim
ln -sf ~/dotfiles/lazyvim/.config/LazyVim ~/.config/LazyVim

# Neovim
ln -sf ~/dotfiles/nvim/.config/nvim ~/.config/nvim

# Tmux
ln -sf ~/dotfiles/tmux/.tmux ~/.tmux

# Tmuxifier
ln -sf ~/dotfiles/tmuxifier/.tmuxifier ~/.tmuxifier

# Zsh
ln -sf ~/dotfiles/zsh/.config/zsh ~/.config/zsh
ln -sf ~/dotfiles/zsh/.config/zsh/.zshrc ~/.zshrc
```

## Requirements

- [Hyprland](https://github.com/hyprwm/Hyprland)
- [Kitty](https://github.com/kovidgoyal/kitty)
- [Neovim](https://neovim.io/) (v0.9+)
- [Tmux](https://github.com/tmux/tmux)
- [Zsh](https://www.zsh.org/)
- [Powerlevel10k](https://github.com/romkatv/powerlevel10k) (for Zsh prompt)
- [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm) (for Tmux plugins)

## Hyprland Workflows

Includes several workflow configurations:

- `default.conf` - Standard setup
- `gaming.conf` - Optimized for gaming
- `powersaver.conf` - Power-efficient mode
- `editing.conf` - Development focus
- `snappy.conf` - Fast and responsive

## License

MIT