# dotvim

Neovim, Vim, bash, tmux and git config for macOS. Neovim first; plain Vim 9 works too.

## Install

```
git clone git@github.com:saamalik/dotvim.git ~/projects/saamalik-dotvim
~/projects/saamalik-dotvim/install.sh
brew bundle --file=~/.vim/Brewfile
```

`install.sh` symlinks `~/.vim` to the checkout, so the repo can live anywhere and everything else refers to `~/.vim`.

To make Homebrew's bash the login shell:

```
echo /opt/homebrew/bin/bash | sudo tee -a /etc/shells
chsh -s /opt/homebrew/bin/bash
```

## Layout

- `vimrc`: the whole editor config. `init.vim` symlinks to it for Neovim.
- `ftplugin/`: per-filetype overrides.
- `dotfiles/`: bashrc, bash_profile, inputrc, gitconfig, tmux.conf, starship.toml.
- `install.sh`: symlinks `~/.vim` and the dotfiles into `$HOME`, installs and updates plugins. Re-run to update.
- `pack/plugins/start/`: the plugins (fzf.vim, vim-gitgutter). Git-ignored.

Machine or work specific shell bits go in `~/.bashrc.local` and git overrides in `~/.gitconfig.local`. Both are picked up when present and are not tracked here.
