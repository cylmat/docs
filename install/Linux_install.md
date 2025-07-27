# Linux install

## Install Docker
```
curl https://github.com/cylmat/docs/blob/main/install/script/docker-cli-install.sh | bash
```


Install Zsh and OhMyZsh
```
# ZSH
sudo apt install -y zsh && zsh --version
chsh -s $(which zsh)
echo $SHELL && $SHELL --version

touch ~/.zshrc

# add at the beginning and end: "zmodload zsh/zprof"  ... ~/.zshrc content...  "zprof" EOF
# see https://github.com/romkatv/zsh-bench

# OMZ
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Speed up OMZ
```
# from https://scottspence.com/posts/speeding-up-my-zsh-shell

# Top of .zshrc
DISABLE_AUTO_UPDATE="true"
DISABLE_MAGIC_FUNCTIONS="true"
DISABLE_COMPFIX="true"

# Smarter completion once a day
autoload -Uz compinit
if [ "$(date +'%j')" != "$(stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)" ]; then
    compinit
else
    compinit -C
fi

# omz
plugins=(
    ...
    zsh-syntax-highlighting  # Always last!
)

ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE="20"
ZSH_AUTOSUGGEST_USE_ASYNC=1

# spaceship
SPACESHIP_PROMPT_ASYNC=false
```

Other
```
# Starship
# use Omz or add in ~/.zshrc: eval "$(starship init zsh)"
curl -sS https://starship.rs/install.sh | sh

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
