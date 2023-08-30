#!/usr/bin/env sh

set -eu

sudo apt-get update
sudo apt -y install tmux curl git unzip fish

chsh -s /usr/bin/fish
curl -sS https://starship.rs/install.sh | sh

git clone https://github.com/tj-14/setup-server.git ~/setup-server
mkdir -p ~/.config/tmux
ln -s ~/setup-server/tmux.conf ~/.config/tmux/tmux.conf
rm -rf ~/.config/fish
ln -s ~/setup-server/fish ~/.config/fish
fish
