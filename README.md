# dotfiles

Personal configuration for **Neovim** (LazyVim), **tmux**, and **Yazi**.

## What's included

| Tool | Config |
|------|--------|
| [Neovim](https://neovim.io) | LazyVim + extras: TypeScript, Vue, Copilot, JSON + ESLint formatting via `eslint_d` |
| [tmux](https://github.com/tmux/tmux) | Catppuccin Mocha theme, sensible keymaps, mouse support |
| [Yazi](https://github.com/sxyazi/yazi) | Catppuccin Mocha theme |

## Install

```bash
git clone git@github.com:idaldu/dotfiles.git ~/dotfiles
cd ~/dotfiles
chmod +x install.sh
./install.sh
```

The script creates symlinks and backs up any existing configs to `~/.dotfiles-backup-<timestamp>/`.

## Requirements

Install these first:

```bash
# macOS
brew install neovim tmux yazi node git ripgrep fd lazygit

# Neovim extras (for LazyVim)
brew install luarocks stylua
```

### After install

- **Neovim** — open `nvim`, plugins install automatically via lazy.nvim. Run `:MasonInstall eslint_d` once for ESLint formatting.
- **tmux** — press `C-s + I` (prefix + I) to install plugins (catppuccin theme).
- **Yazi** — runs as-is with Catppuccin theme.

## Neovim extras enabled

- `lazyvim.plugins.extras.ai.copilot`
- `lazyvim.plugins.extras.lang.json`
- `lazyvim.plugins.extras.lang.typescript`
- `lazyvim.plugins.extras.lang.vue`
