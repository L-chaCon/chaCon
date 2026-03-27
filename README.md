# .chaConfig

Personal macOS developer environment setup. Manages dotfiles and bootstraps a full workstation from scratch.

## What's managed

| Layer | Tool |
|---|---|
| Shell | Zsh + Oh My Zsh + Starship prompt |
| Terminal | Ghostty |
| Multiplexer | Tmux + Catppuccin + gitmux |
| Editor | Neovim (built from source) |
| Window manager | AeroSpace |
| File tools | fzf, fd, bat, lsd, ripgrep, zoxide |
| Version control | Git (SSH + 1Password signing), delta, jj* |
| Language tooling | pyenv, Poetry, Go*, Zig* |
| Infrastructure | kubectl*, kafkactl*, Docker*, AWS CLI* |
| Dotfile manager | GNU Stow |
| Theme | carbonfox (applied across all tools) |

> `*` = manually installed, not managed by the bootstrap scripts.

## Prerequisites

- macOS
- [Homebrew](https://brew.sh) installed
- SSH key added to GitHub (the bootstrap will prompt you)

## Bootstrap a new machine

```bash
git clone git@github.com:L-chaCon/.chaConfig.git $HOME/github.com/chaCon/.chaConfig
cd $HOME/github.com/chaCon/.chaConfig
./pow
```

The `pow` script runs `scripts/1_core` through `scripts/6_dotfiles` in order. Each script is idempotent — safe to re-run.

## Dotfiles

Dotfiles live in `dotfiles/` and are managed with GNU Stow. Each subdirectory is a package that mirrors the `$HOME` path structure.

```
dotfiles/
├── aerospace/    → ~/.config/aerospace/
├── bat/          → ~/.config/bat/
├── bin/          → ~/.local/scripts/
├── btop/         → ~/.config/btop/
├── dash/         → ~/.local/dashdocs/
├── ghostty/      → ~/.config/ghostty/
├── git/          → ~/.gitconfig, ~/.gitignore
├── opencode/     → ~/.config/opencode/
├── starship/     → ~/.config/starship.toml
├── tmux/         → ~/.tmux.conf, ~/.gitmux.conf
└── zsh/          → ~/.chaCon, ~/.local/zshrc/*, ~/.config/lsd/
```

### Stow all packages

```bash
cd dotfiles
./install    # symlink everything to $HOME
./uninstall  # remove all symlinks
```

### Add a new package

1. Create `dotfiles/<package>/` mirroring the `$HOME` path (e.g. `dotfiles/foo/.config/foo/config`)
2. Run `cd dotfiles && stow foo -t $HOME`

## Structure

```
.chaConfig/
├── pow                # master bootstrap runner
├── scripts/           # numbered setup scripts (run in order by pow)
│   ├── 1_core         # brew tools, SSH key, fonts, Ghostty
│   ├── 2_zsh          # Zsh, Oh My Zsh, CLI tools, plugins
│   ├── 3_tmux         # Tmux, TPM, gitmux, Catppuccin
│   ├── 4_nvim         # Neovim (built from source) + config
│   ├── 5_aerospace    # AeroSpace tiling WM
│   └── 6_dotfiles     # GNU Stow + .zshrc bootstrap
└── dotfiles/          # Stow-managed config packages
```
