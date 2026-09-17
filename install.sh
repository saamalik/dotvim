#!/usr/bin/env bash
# Symlink the config into $HOME and install or update the Vim plugins.
# Safe to re-run. Works from wherever the repo is checked out; ~/.vim is symlinked to it.
set -euo pipefail

cd "$(dirname "${BASH_SOURCE[0]}")"
DOTVIM=$PWD

link() {
  if [[ -d $2 && ! -L $2 ]]; then
    echo "  skip: $2 is a real directory, move it aside and re-run"
    return
  fi
  mkdir -p "$(dirname "$2")"
  ln -sfn "$1" "$2"
  echo "  $2 -> $1"
}

echo "Linking config"
[[ $DOTVIM == "$HOME/.vim" ]] || link "$DOTVIM" "$HOME/.vim"
link "$DOTVIM"                        "$HOME/.config/nvim"
link "$DOTVIM/vimrc"                  "$HOME/.vimrc"
link "$DOTVIM/dotfiles/bash_profile"  "$HOME/.bash_profile"
link "$DOTVIM/dotfiles/bashrc"        "$HOME/.bashrc"
link "$DOTVIM/dotfiles/inputrc"       "$HOME/.inputrc"
link "$DOTVIM/dotfiles/gitconfig"     "$HOME/.gitconfig"
link "$DOTVIM/dotfiles/tmux.conf"     "$HOME/.tmux.conf"
link "$DOTVIM/dotfiles/starship.toml" "$HOME/.config/starship.toml"

# Plugins are plain Vim packages: clone once, pull on every run.
clone_or_pull() {
  if [[ -d $2/.git ]]; then
    git -C "$2" pull -q --ff-only
  else
    git clone -q --depth 1 "https://github.com/$1.git" "$2"
  fi
  echo "  $1"
}

echo "Plugins"
plugins=(
  junegunn/fzf.vim
  airblade/vim-gitgutter
)
for repo in "${plugins[@]}"; do
  clone_or_pull "$repo" "$DOTVIM/pack/plugins/start/${repo#*/}"
done
# kube context in the tmux status line
clone_or_pull jonmosco/kube-tmux "$HOME/.tmux/kube-tmux"

if command -v nvim >/dev/null; then
  nvim --headless '+helptags ALL' +qa
else
  vim -es '+helptags ALL' +qa || true
fi

if command -v brew >/dev/null; then
  echo "Tools: brew bundle --file=$DOTVIM/Brewfile"
fi
