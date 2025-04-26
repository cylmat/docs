# Install

## From scratch

Install Wsl2
```
```

Install Docker
```
echo https://github.com/cylmat/docs/blob/main/install/script/docker-cli-install.sh
```

Enable VsCode
```
```

Install Zsh, Starship, OhMyZsh
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

# Starship
# use Omz or add in ~/.zshrc: eval "$(starship init zsh)"
curl -sS https://starship.rs/install.sh | sh
```

## Windows app
* https://www.docker.com/products/docker-desktop
* https://apps.microsoft.com/store/detail/microsoft-powertoys/XP89DCGQ3K6VLD
* https://apps.microsoft.com/store/detail/ubuntu-22042-lts/9PN20MSR04DW
* https://notepad-plus-plus.org/downloads
* https://portswigger.net/burp/communitydownload
* https://www.postman.com/downloads
* https://code.visualstudio.com/download
* https://www.wireshark.org/download.html
* https://insomnia.rest/

* https://docs.chocolatey.org/en-us/choco/setup#non-administrative-install
```
* choco install k9s
```
https://alacritty.org/index.html

Useful
- https://learn.microsoft.com/en-us/training/modules/wsl-introduction
- https://learn.microsoft.com/en-us/windows/wsl/install

### VSCode

(https://devfonts.gafi.dev)
```
https://www.jetbrains.com/lp/mono
https://fonts.google.com/specimen/Fira+Code
"editor.fontFamily": "JetBrains Mono, Fira Code, Consolas, Courier New, monospace"
"editor.fontLigatures": true,
```

### Extensions

* Chrome : https://chromewebstore.google.com/category/extensions/productivity/developer
- https://bitwarden.com/browser-start
- https://proton.me/fr/pass
- https://chromewebstore.google.com/detail/secure-shell
- https://chromewebstore.google.com/detail/talend-api-tester-free-ed

-

* Firefox : https://addons.mozilla.org/fr/firefox/extensions/category/web-development/  
* https://addons.mozilla.org/fr/firefox/addon  
  - cookie-quick-manager, feedbroreader, firephp, modify-header-value, notes-by-firefox
  - switchyomega, tweak-extension, vue-js-devtools, xdebug-helper-for-firefox
  - html-validator, colorzilla, fireshot, measure-it, firephp, http-header-live
  - firebug-and-web-development, web-developer, Dark Reader, RESTClient

https://addons.mozilla.org/fr/firefox/addon/greasemonkey : personnalisation de page via script

### WSL

- https://learn.microsoft.com/en-us/windows/wsl/install-manual
  + installer WSL2 : https://docs.microsoft.com/fr-fr/windows/wsl/install
- https://www.cloudflare.com/fr-fr/learning/dns/what-is-1.1.1.1
- https://docs.docker.com/engine/install/ubuntu
- Installer Docker : https://www.paulsblog.dev/how-to-install-docker-without-docker-desktop-on-windows
  + ou directement utiliser le site de docker: https://docs.docker.com/engine/install/ubuntu/?ref=paulsblog.dev#install-using-the-repository
- https://docs.docker.com/engine/install/linux-postinstall
  + Si problème de DNS : https://gist.github.com/coltenkrauter/608cfe02319ce60facd76373249b8ca6
- https://docs.microsoft.com/fr-fr/windows/wsl/file-permissions

```
- sudo chmod 666 /var/run/docker.sock
  - echo "nameserver 1.1.1.1" | sudo tee resolv.conf
- aptitude search nftables | grep ^i
- update-alternatives --config iptables
  +  il faut être en `/usr/sbin/iptables-legacy, 20, manual mode`
- iptables-save

sudo systemd docker start

export DOCKER_HOST=unix:///var/run/docker.sock
%docker ALL=(ALL) NOPASSWD: /usr/bin/dockerd
export DOCKER_SOCK=/var/run/docker.sock
export PUID=$(id -u)
export PGID=$(id -g)
```

### Docker

* wsl from other dir
 https://dev.to/mefaba/installing-wsl-on-another-drive-in-windows-5c4a
  wsl --import Ubuntu-22.04 D:\Ubuntu D:\Ubuntu-22.04-wsl-export.tar
  
* install docker 
  
https://www.paulsblog.dev/how-to-install-docker-without-docker-desktop-on-windows/


* 1. Required dependencies 
sudo apt-get update 
sudo apt-get -y install apt-transport-https ca-certificates curl gnupg lsb-release 

* 2. GPG key 
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg 

* 3. Use stable repository for Docker  
  echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null 

sudo apt-get update 
sudo apt-get -y install docker-ce docker-ce-cli containerd.io 

* 4. Add user to docker group 
sudo groupadd docker 
sudo usermod -aG docker $USER sudo chmod a+r /usr/share/keyrings/docker-archive-keyring.gpg
sudo update-alternatives --config iptables

