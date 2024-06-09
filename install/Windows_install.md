# Install

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
* Firefox : https://addons.mozilla.org/fr/firefox/extensions/category/web-development/  
* https://addons.mozilla.org/fr/firefox/addon/  
- cookie-quick-manager, feedbroreader, firephp, modify-header-value, notes-by-firefox
- switchyomega, tweak-extension, vue-js-devtools, xdebug-helper-for-firefox
- html-validator, colorzilla, fireshot, measure-it, firephp, http-header-live
+ firebug-and-web-development, web-developer
- Dark Reader, RESTClient

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
```
