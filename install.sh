#!/bin/bash
sudo add-apt-repository --remove ppa:x4121/ripgrep
sudo add-apt-repository ppa:neovim-ppa/unstable
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt-get update
sudo apt -y install neovim vim tmux curl ripgrep git exuberant-ctags nodejs unzip fish golang-go fzf

chsh -s /usr/bin/fish
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
curl -sS https://starship.rs/install.sh | sh
curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash
env CGO_ENABLED=0 go install -ldflags="-s -w" github.com/gokcehan/lf@latest
fish
