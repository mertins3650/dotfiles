# Dotfiles Repository

This repository contains my personal configuration files (dotfiles) for various tools and environments.
Each subdirectory corresponds to a different application or shell and contains the files that should be installed or symlinked into your home directory.

## Directory Layout
- `ghostty/` – Configs for the terminal multiplexer **GhostTY**.
- `nvim/` – Neovim configuration with custom Lua plugins, key bindings and LSP settings.
- `opencode/` – Settings for the **opencode** tool.
- `tmux/` – tmux configuration files.
- `tmux-sessionizer/` – Session manager for tmux.
- `zshrc/` – Z shell configuration.
- `readme.md` – This file.

## Installation
```bash
git clone https://github.com/simonmichael/dotfiles.git && cd dotfiles
# install with GNU Stow
stow -R ghostty nvim opencode tmux tmux-sessionizer zshrc
```

Feel free to browse the individual folders for more details or adapt them to your own setup.

## Contributions
If you find a better configuration, feel free to open an issue or pull request.
