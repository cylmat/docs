#!/usr/bin/env bash

############
# Starship #
############

# Powerline FONT
sudo apt install -y fonts-powerline
sudo wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
sudo mv PowerlineSymbols.otf /usr/share/fonts/
sudo fc-cache -vf
sudo mv 10-powerline-symbols.conf /etc/fonts/conf.d/

RC="$HOME/.bashrc"
if [[ "$SHELL" == '/bin/zsh' ]]; then
    RC="$HOME/.zshrc"
fi

### Starship @https://starship.rs
sh -c "$(curl -fsSL https://starship.rs/install.sh)"
echo 'eval "$(starship init bash)"' >> $RC
mkdir -p ~/.config && touch ~/.config/starship.toml
