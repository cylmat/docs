# Linux install


## Pre-prerequisites
```
# sudo apt-get install gettext cmake zip curl
# sudo apt install -y build-essential software-properties-common
```

## Install Zsh, OhMyZsh and colored prompt

- [cylmat/shell_zsh.sh](https://github.com/cylmat/docs/blob/main/install/shell_zsh.sh)



## Install Docker
```
curl https://github.com/cylmat/docs/blob/main/install/script/docker-cli-install.sh | bash
```

Other
```

# fzf
apt install fzf

# Autosuggestion
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Clear
apt clean
apt autoclean
apt autoremove
```

## Docs

- https://docs.docker.com/engine/install/ubuntu/
- https://docs.docker.com/engine/install/linux-postinstall
