# Dotfiles

Personal configuration files managed with GNU Stow. Clone and symlink to your home directory.

## Installation

```bash
git clone https://github.com/simonmichael/dotfiles.git && cd dotfiles
stow -R ghostty nvim opencode tmux tmux-sessionizer zshrc
```

## Contents

| Directory | Description |
|-----------|-------------|
| `ghostty/` | Terminal emulator with Tokyo Night theme, JetBrains Mono font, pane resizing shortcuts, and clipboard operations |
| `nvim/` | Neovim Lua config with LSP, Treesitter, Snacks, Harpoon, Oil, Todo-comments, Blink completion, Conform formatting, and custom snippets |
| `tmux/` | Terminal multiplexer with Vi-mode, Tokyo Night status bar, sessionizer integration (`Ctrl+f`), and copy-mode via `wl-copy` |
| `tmux-sessionizer/` | Custom session manager with opencode integration and configurable search paths |
| `zshrc/` | Z shell with Oh My Zsh, mise, zoxide (`cd` replacement), fzf, eza aliases, and utilities (`iso2sd`, `format-drive`) |
| `opencode/` | Local LLM configuration for LM Studio with qwen3-coder-30b-a3b model |

## Key Features

- **Terminal workflow**: Ghostty → tmux → Neovim with seamless integration
- **Session management**: Quickly switch between projects with tmux-sessionizer
- **Modern CLI**: zoxide for smart navigation, fzf for fuzzy finding, eza for colorful listings
- **Neovim plugins**: Lazy loading with custom configurations for productivity
