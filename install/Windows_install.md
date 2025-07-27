# Install

## Wsl2 from scratch

### Install Wsl2 in HOST
```
wsl -l
wsl --unregister Ubuntu-22.04
(https://learn.microsoft.com/en-us/windows/wsl/use-custom-distro)
wsl --import Ubuntu-22.04 D:\Applications\Ubuntu D:\Applications\Ubuntu\Ubuntu-export-22.04.tar
wsl -l -v
wsl --manage Ubuntu-22.04 --set-default-user username
```

### in WSL
```
sudo adduser username
echo "[user]" >> /etc/wsl.conf
echo "default=username" >> /etc/wsl.conf
# disable wsl info
touch /username/.hushlogin
sudo systemctl disable snapd
```

### > How to shrink (reduce) Wsl size
```
 # https://stephenreescarter.net/how-to-shrink-a-wsl2-virtual-disk/
> wsl --shutdown
> diskpart
      - select vdisk file="C:\Users\rhc7\AppData\Local\Packages\CanonicalGroupLimited.Ubuntu22.04LTS_79\LocalState\ext4.vhdx"
      - compact vdisk
```

### linux

- [cylmat/Linux_install.md](https://github.com/cylmat/docs/blob/main/install/Linux_install.md)




### Enable VsCode

remove Windows C:\Users\username\vscode-remote-wsl  
remove C:\Users\username\.vscodewsl --shutdownwslconfig /setdefault Ubuntu-22.04  
wslconfig /setdefault Ubuntu-22.04  
```
sudo apt-get update && sudo apt-get install wget ca-certificates

# (happen /mnt/xxx features and .vscode-server in PATH)
echo '[automount]
enabled = true
options = "metadata,uid=1000,gid=1000,umask=0022,fmask=11,case=off"
[interop]
enabled=true
appendWindowsPath=true' >> /etc/wsl.conf
```

## Windows app

* https://apps.microsoft.com/store/detail/microsoft-powertoys/XP89DCGQ3K6VLD
* https://apps.microsoft.com/store/detail/ubuntu-22042-lts/9PN20MSR04DW
* https://docs.chocolatey.org/en-us/choco/setup#non-administrative-install
* https://www.docker.com/products/docker-desktop
* https://insomnia.rest
* https://notepad-plus-plus.org/downloads
* https://portswigger.net/burp/communitydownload
* https://www.postman.com/downloads
* https://code.visualstudio.com/download
* https://www.wireshark.org/download.html


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

## Doc

**Wsl**
- https://dev.to/mefaba/installing-wsl-on-another-drive-in-windows-5c4a

- https://learn.microsoft.com/en-us/training/modules/wsl-introduction
- https://learn.microsoft.com/en-us/windows/wsl/install
- https://learn.microsoft.com/en-us/windows/wsl/install-manual
- https://docs.microsoft.com/fr-fr/windows/wsl/file-permissions
  
- Fix DNS resolution in WSL2 : https://gist.github.com/coltenkrauter/608cfe02319ce60facd76373249b8ca6
- https://www.cloudflare.com/fr-fr/learning/dns/what-is-1.1.1.1

**Docker**
- Installer Docker : https://www.paulsblog.dev/how-to-install-docker-without-docker-desktop-on-windows
- https://docs.docker.com/engine/install/ubuntu/
- https://docs.docker.com/engine/install/linux-postinstall

