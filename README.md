# My developer's environment

This is my current day by day configuration as a fullstack Symfony/React developer.      
I like adding a lot of usefull and time-saving plugins that gave me a lot of fluidity in my workflow.    
I share here an overview of tools and utils installed on my workspace. Enjoy!   

## Shell

- Shell with auto and colors: [Zsh](https://wiki.ubuntu-fr.org/zsh)
  + Framework [OhMyZsh](https://ohmyz.sh)
  + OhMyZsh plugins: (**aliases alias-finder copybuffer copypath copyfile dirhistory git fzf kube-ps1 kubectl helm ssh sudo tmux tmuxinator vi-mode z zsh-autosuggestions zsh-navigation-tools zsh-syntax-highlighting**)  
  + Plugins manager [Antidote](https://getantidote.github.io)
  + Autosuggestion [docker](https://docs.docker.com/engine/cli/completion), [git](https://github.com/git/git/blob/master/contrib/completion/git-completion.bash), [k8s](https://kubernetes.io/fr/docs/tasks/tools/install-kubectl/#kubectl-autocompletion-2), [zsh](https://github.com/zsh-users/zsh-autosuggestions)
  + Benchmark [Zsh-bench](https://github.com/romkatv/zsh-bench)
- Prompt colorfull: [Starship](https://starship.rs) or [OhMyPosh](https://ohmyposh.dev)
- Terminal sessions: [Tmux](https://doc.ubuntu-fr.org/tmux) + [Tmuxinator](https://github.com/tmuxinator/tmuxinator)
  + Plugins manager [Tpm](https://github.com/tmux-plugins/tpm) (see [plugins list](https://github.com/tmux-plugins/list))
  + Tpm plugins: (**tmux-autoreload,continuum,fzf,jump,menus,pomodoro-plus,resurrect,sensible,sessionist,sidebar,yank**) 
  + Theme (**tmux-colors-solarized**)
 
## Tools
 
Common
- [brew](https://brew.sh)
- [busybox](https://busybox.net) (toolbox)
+ [nix](https://nixos.org) (package manager)
+ [snap](https://snapcraft.io) (apps install)

Dev & data  
- [git](https://git-scm.com) (version manager)
- [gron](https://github.com/tomnomnom/gron) Make JSON greppable
- [iredis](https://github.com/laixintao/iredis) Redis client with autocompletion and syntax highlighting
- [jq](https://jqlang.github.io/jq) (json)
- [k9s](https://github.com/derailed/k9s) Kubernetes CLI To Manage Your Clusters
- [kdash](https://github.com/kdash-rs/kdash) (kube dashboard)
- [lazydocker](https://github.com/jesseduffield/lazydocker) The lazier way to manage everything docker 
- [lazygit](https://github.com/jesseduffield/lazygit) Simple terminal UI for git commands
- [minikube](https://minikube.sigs.k8s.io) (containers)
- [tig](https://jonas.github.io/tig) (git tree)

Files & logs
+ [bat](https://github.com/sharkdp/bat) (bat-cat)
+ [ccze](https://github.com/cornet/ccze) (color logs)
+ [eza](https://github.com/eza-community/eza)
+ [fdfind](https://github.com/sharkdp/fd) Simple fast and user-friendly alternative to 'find'
+ [fzf](https://github.com/junegunn/fzf) (files)
+ [fzy](https://github.com/jhawthorn/fzy) (finder)
+ [ranger](https://github.com/ranger/ranger) (filesystem)
+ [rsync](https://doc.ubuntu-fr.org/rsync)
+ [sd](https://github.com/chmln/sd) Intuitive find & replace CLI (sed alternative) 
+ [tre](https://github.com/dduan/tre)

Fun  
+ [asciiquarium](https://github.com/cmatsuoka/asciiquarium)
+ [cmatrix](https://github.com/abishekvashok/cmatrix)
+ [cowsay](https://github.com/tnalpgge/rank-amateur-cowsay) (image)
+ [figlet](http://www.figlet.org) (ascii)
+ [fortune](https://doc.ubuntu-fr.org/fortune) (teller)
+ [lolcat](https://github.com/busyloop/lolcat) (rainbow)
+ [no-more-secrets](https://github.com/bartobri/no-more-secrets)
+ sl (train)

Helper & ai !!
* [cheat.sh](https://github.com/chubin/cheat.sh)
* [grex](https://github.com/pemistahl/grex) Generating regular expressions from user-provided test cases 
* [navi](https://github.com/denisidoro/navi) (helper)
* [so](https://github.com/samtay/so) (stack overflow)
* [tldr](https://tldr.sh)
* [up](https://github.com/akavel/up) Writing linux pipes with instant live preview

Monitor & info  
+ [btop](https://github.com/aristocratos/btop) (monitoring)
+ [duf](https://github.com/muesli/duf)
+ [ncdu](https://dev.yorhel.nl/ncdu)
+ [neofetch](https://github.com/dylanaraps/neofetch) (informations)
+ [procs](https://github.com/dalance/procs)

Network & net
+ [bandwhich](https://github.com/imsnif/bandwhich) (ip)
+ [curlie](https://github.com/rs/curlie) Power of curl with ease of use httpie
+ [httpie](https://httpie.io) (curl-like)
+ [http-prompt](https://http-prompt.com) Interactive cli HTTP client
+ [lynx](https://lynx.invisible-island.net)
+ [w3m](https://doc.ubuntu-fr.org/w3m)

Training
+ [tt](https://github.com/lemnos/tt)
+ [gtypist](https://www.gnu.org/software/gtypist)
+ [ttyper](https://github.com/max-niederman/ttyper)
+ [toipe](https://github.com/Samyak2/toipe)

Utils & work
+ bc (calculator)
+ [entr](https://github.com/eradman/entr)
+ [pass](https://www.passwordstore.org) The standard unix password manager
+ [taskwarrior](https://taskwarrior.org) (taskmanager)
+ uuidgen


## Editing

- Windows editing: VSCode
  + Plugins: ..
- Mouseless edition: Vim
  + Plugins: ..

## Awesome !

[Awesome-awesome](https://github.com/emijrp/awesome-awesome) - [Awesome-awesomeness](https://github.com/bayandin/awesome-awesomeness)

Awesome lists: [Awesome rank](https://awesomerank.github.io), [Awesome lists](https://github.com/sindresorhus/awesome), [Awesome all tracked lists](https://www.trackawesomelist.com/#all-tracked-list), [Awesome top 50](https://www.trackawesomelist.com/#top-50-awesome-list)

Data: [Awesome public datasets](https://github.com/awesomedata/awesome-public-datasets)

Dev tools: [Awesome Docker](https://github.com/veggiemonk/awesome-docker), [Awesome Git](https://github.com/dictcp/awesome-git), [Awesome Git add](https://project-awesome.org/stevemao/awesome-git-addons)

Editor: [Awesome VSCode](https://github.com/viatsko/awesome-vscode), [Awesome Vim](https://github.com/akrawchyk/awesome-vim), [vimawesome.com](https://vimawesome.com)

Environment
- Cli [Awesome Cli-apps](https://github.com/agarrharr/awesome-cli-apps), [Awesome Shell](https://awesomerank.github.io/lists/alebcay/awesome-shell.html)
- Shell [Awesome Bash](https://github.com/awesome-lists/awesome-bash), [Awesome Tmux](https://github.com/rothgar/awesome-tmux), [Awesome Zsh](https://awesomerank.github.io/lists/unixorn/awesome-zsh-plugins.html)
+ [cli-tools](https://dev.to/lissy93/cli-tools-you-cant-live-without-57f6), [terminals-are-sexy](https://github.com/k4m4/terminals-are-sexy), [zsh-top](https://safjan.com/top-popular-zsh-plugins-on-github-2023)

Programming
- Front: [Awesome Js](https://github.com/sorrycc/awesome-javascript), [Awesome React](https://github.com/enaqx/awesome-react), [Awesome React components](https://github.com/brillout/awesome-react-components), [awesome-web-react](https://awesome-web-react.js.org)
- Back: [Awesome Php](https://github.com/ziadoz/awesome-php), [Awesome ymfony](https://github.com/sitepoint-editors/awesome-symfony), [Symfony 30](https://symfony.com/blog/the-30-most-useful-symfony-bundles-and-making-them-even-better)


---
Most used:
- [Install](https://github.com/cylmat/docs/tree/main/install) : Windows apps, Vscode extentions, apt shell scripts... 
- [Utils](https://github.com/cylmat/docs/tree/main/Utils) : Coding, security, project useful tools...
- App refs: [Cloud-Delivery-Models](https://github.com/cylmat/docs/blob/main/Form/Archilog/Cloud-Delivery-Models.png)

---
See too: [terminal-beautiful-productive](https://dev.to/yogeshdev/make-your-unix-terminal-beautiful-productive-c1d)  
Try: Prezto plugin manager, Powerlevel10k theme, zellij multiplexer, nushell, alacritty terminal..  
