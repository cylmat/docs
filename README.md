# My developer's environment

This is my current day by day configuration as a fullstack Symfony/React developer.      
I like adding a lot of usefull and time-saving plugins that gave me a lot of fluidity in my workflow.    
I share here an overview of tools and utils installed on my workspace. Enjoy!   

## Shell

- Shell with auto and colors:
  + [Zsh](https://wiki.ubuntu-fr.org/zsh) by default, with help of [Nushell](https://www.nushell.sh)
  + Framework [OhMyZsh](https://ohmyz.sh)
  + OhMyZsh plugins: (**aliases alias-finder copybuffer copypath copyfile dirhistory git fzf kube-ps1 kubectl helm ssh sudo tmux tmuxinator vi-mode z zsh-autosuggestions zsh-navigation-tools zsh-syntax-highlighting**)  
  + Plugins manager [Antidote](https://getantidote.github.io) or [Prezto](https://github.com/sorin-ionescu/prezto)
  + Autosuggestion for [docker](https://docs.docker.com/engine/cli/completion), [git](https://github.com/git/git/blob/master/contrib/completion/git-completion.bash), [k8s](https://kubernetes.io/fr/docs/tasks/tools/install-kubectl/#kubectl-autocompletion-2), [zsh](https://github.com/zsh-users/zsh-autosuggestions)
  + Benchmark [Zsh-bench](https://github.com/romkatv/zsh-bench)
- Prompt colorfull:
  + [Starship](https://starship.rs) or [Powerlevel10k](https://github.com/romkatv/powerlevel10k)
  + or use [OhMyPosh](https://ohmyposh.dev)
- Terminal sessions: [Tmux](https://doc.ubuntu-fr.org/tmux) + [Tmuxinator](https://github.com/tmuxinator/tmuxinator)
  + Plugins manager [Tpm](https://github.com/tmux-plugins/tpm) (see [plugins list](https://github.com/tmux-plugins/list))
  + Tpm plugins: (**tmux-autoreload, continuum, fzf, jump, menus, resurrect, sensible, sessionist, sidebar, yank**) 
  + Theme (**tmux-colors-solarized**)
 
## Editing

- Windows editing: VSCode
  + Plugins: [extensions.json](https://github.com/cylmat/docs/blob/main/install/.vscode/extensions.json)
  + [VsCodeVim](https://aka.ms/vscodevim)
- Mouseless edition: Vim
  + Plugins: [.vimrc](https://github.com/cylmat/docs/blob/main/install/.home/.vimrc)

## Tools
 
Common
- [brew](https://brew.sh) Package Manager for Linux
- [busybox](https://busybox.net) Swiss Army Knife of Embedded Linux
+ [nix](https://nixos.org) Declarative builds and deployments
+ [snap](https://snapcraft.io) The app store for Linux

Dev & data  
- [git](https://git-scm.com) Distributed version control system
- [gron](https://github.com/tomnomnom/gron) Make JSON greppable
- [iredis](https://github.com/laixintao/iredis) Redis client with autocompletion and syntax highlighting
- [jq](https://jqlang.github.io/jq) Lightweight and flexible command-line JSON processor
- [k9s](https://github.com/derailed/k9s) Kubernetes CLI To Manage Your Clusters
- [kdash](https://github.com/kdash-rs/kdash) Simple and fast dashboard for Kubernetes 
- [krew](https://krew.sigs.k8s.io) Find and install kubectl plugins 
- [lazydocker](https://github.com/jesseduffield/lazydocker) The lazier way to manage everything docker 
- [lazygit](https://github.com/jesseduffield/lazygit) Simple terminal UI for git commands
- [minikube](https://minikube.sigs.k8s.io) Quickly sets up a local Kubernetes cluster
- [symfony](https://symfony.com/download) Build, run, and manage Symfony applications
- [tig](https://jonas.github.io/tig) Ncurses-based text-mode interface for git

Encrypt
- [gnupg](https://gnupg.org) Allows to encrypt and sign data
- [openssl](https://www.openssl.org) Full-featured toolkit for general-purpose cryptography

Files & logs
+ [ack](https://linux.die.net/man/1/ack) Grep-like text finder 
+ [bat](https://github.com/sharkdp/bat) **_Better Cat!_** A cat clone with wings
+ [ccze](https://github.com/cornet/ccze) Fast log colorizer
+ [diff-so-fancy](https://github.com/so-fancy/diff-so-fancy) The best-lookin' diffs
+ [eza](https://github.com/eza-community/eza) **_Better Ls!_** A modern alternative to ls 
+ [fdfind](https://github.com/sharkdp/fd) Simple fast and user-friendly alternative to 'find'
+ [fzf](https://github.com/junegunn/fzf) A command-line fuzzy finder 
+ [fzy](https://github.com/jhawthorn/fzy) A simple, fast fuzzy finder for the terminal
+ [git-delta](https://dandavison.github.io/delta) **_Better diff!_** A syntax-highlighting pager for git, diff, and grep
+ [joshuto](https://github.com/kamiyaa/joshuto) Ranger-like terminal file manager written in Rust
+ [ranger](https://github.com/ranger/ranger) A Vim-inspired filemanager for the console 
+ [ripgrep](https://github.com/BurntSushi/ripgrep) Fast searches directories for a regex pattern
+ [rsync](https://rsync.samba.org) Fast incremental file transfer
+ [sd](https://github.com/chmln/sd) **_Better sed!_** Intuitive find & replace CLI
+ [tre](https://github.com/dduan/tre) **_Better tree!_** Tree command, improved
+ [ugrep](https://ugrep.com) **_Better grep!_** Powerful, ultra fast, user-friendly, compatible grep

Fun  
+ [asciiquarium](https://github.com/cmatsuoka/asciiquarium)
+ [cmatrix](https://github.com/abishekvashok/cmatrix)
+ [cowsay](https://github.com/tnalpgge/rank-amateur-cowsay) (image)
+ [figlet](http://www.figlet.org) (ascii)
+ [fortune](https://doc.ubuntu-fr.org/fortune) (teller)
+ [lolcat](https://github.com/busyloop/lolcat) (rainbow)
+ [no-more-secrets](https://github.com/bartobri/no-more-secrets)
+ [sl](https://github.com/mtoyoda/sl) Cure your bad habit of mistyping

Helper & ai
* [aishell](https://github.com/BuilderIO/ai-shell) A CLI that converts natural language to shell commands
* [chatgpt](https://github.com/0xacx/chatGPT-shell-cli) Simple shell script to use OpenAI's ChatGPT and DALL-E from the terminal
* [cheat.sh](https://github.com/chubin/cheat.sh) The only cheat sheet you need
* [explain.sh](https://github.com/benjamine/explain.sh)
* [grex](https://github.com/pemistahl/grex) Generating regular expressions from user-provided test cases 
* [navi](https://github.com/denisidoro/navi) (helper)
* [so](https://github.com/samtay/so) (stack overflow)
* [tldr](https://tldr.sh) **_Better man!_** Simplified and community-driven man page
* [up](https://github.com/akavel/up) Writing linux pipes with instant live preview !

Monitor & info  
+ [btop](https://github.com/aristocratos/btop) **_Better top!_** A monitor of resources 
+ [duf](https://github.com/muesli/duf) **_Better du!_** Disk Usage/Free Utility
+ [ncdu](https://dev.yorhel.nl/ncdu) Disk usage analyzer with a text-mode user interface
+ [neofetch](https://github.com/dylanaraps/neofetch) A command-line system information tool
+ [procs](https://github.com/dalance/procs) **_Better ps!_** A modern replacement for ps

Network & net
+ [bandwhich](https://github.com/imsnif/bandwhich) Terminal bandwidth utilization tool 
+ [curlie](https://github.com/rs/curlie) **_Better curl!_** Power of curl with ease of use httpie
+ [httpie](https://httpie.io) Making APIs simple and intuitive
+ [http-prompt](https://http-prompt.com) Interactive cli HTTP client
+ [lynx](https://lynx.invisible-island.net) Text web browser
+ [w3m](https://doc.ubuntu-fr.org/w3m) Web browser

Training
+ [tt](https://github.com/lemnos/tt)
+ [gtypist](https://www.gnu.org/software/gtypist)
+ [ttyper](https://github.com/max-niederman/ttyper)
+ [toipe](https://github.com/Samyak2/toipe)

Utils & work
+ [bc](https://doc.ubuntu-fr.org/bc) Command line calculator
+ [entr](https://github.com/eradman/entr) Run arbitrary commands when files change
+ [glow](https://github.com/charmbracelet/glow) Render markdown on the CLI
+ [just](https://github.com/casey/just) **_Better make!_** Just a command runner
+ [pass](https://passwordstore.org) The standard unix password manager
+ [scc](https://github.com/boyter/scc) Fast accurate code counter with complexity calculations
+ [taskwarrior](https://taskwarrior.org) Manages your TODO list from the command line
+ [tokei](https://github.com/XAMPPRocky/tokei) Count your code, quickly
+ uuidgen UUID generator
+ [xdg-open](https://doc.ubuntu-fr.org/xdg-open) Open file with default app
+ [xsel](http://www.kfish.org/software/xsel) Get/set the contents of the clipboard selection
+ [zshbench](https://github.com/romkatv/zsh-bench) Benchmark for interactive Zsh

## Awesome !

[Awesome-awesome](https://github.com/emijrp/awesome-awesome) - [Awesome-awesomeness](https://github.com/bayandin/awesome-awesomeness)

Awesome lists: [Awesome rank](https://awesomerank.github.io), [Awesome lists](https://github.com/sindresorhus/awesome), [Awesome all tracked lists](https://www.trackawesomelist.com/#all-tracked-list), [Awesome top 50](https://www.trackawesomelist.com/#top-50-awesome-list)

Data: [Awesome public datasets](https://github.com/awesomedata/awesome-public-datasets)

Dev tools: [Awesome Docker](https://github.com/veggiemonk/awesome-docker), [Awesome Git](https://github.com/dictcp/awesome-git), [Awesome Git add](https://project-awesome.org/stevemao/awesome-git-addons)

Editor: [Awesome VSCode](https://github.com/viatsko/awesome-vscode), [Awesome Vim](https://github.com/akrawchyk/awesome-vim), [vimawesome.com](https://vimawesome.com)

Environment
- Cli [Awesome Cli-apps](https://github.com/agarrharr/awesome-cli-apps), [Awesome Shell](https://awesomerank.github.io/lists/alebcay/awesome-shell.html)
- Shell [Awesome Bash](https://github.com/awesome-lists/awesome-bash), [Awesome Tmux](https://github.com/rothgar/awesome-tmux), [Awesome Zsh](https://awesomerank.github.io/lists/unixorn/awesome-zsh-plugins.html)
+ [terminals-are-sexy](https://github.com/k4m4/terminals-are-sexy), [zsh-top](https://safjan.com/top-popular-zsh-plugins-on-github-2023), [tools-alternatives](https://github.com/mayfrost/guides/blob/master/ALTERNATIVES.md)

Programming
- Front: [Awesome Js](https://github.com/sorrycc/awesome-javascript), [Awesome React](https://github.com/enaqx/awesome-react), [Awesome React components](https://github.com/brillout/awesome-react-components), [awesome-web-react](https://awesome-web-react.js.org)
- Back: [Awesome Php](https://github.com/ziadoz/awesome-php), [Awesome Symfony](https://github.com/sitepoint-editors/awesome-symfony), [Symfony top30](https://symfony.com/blog/the-30-most-useful-symfony-bundles-and-making-them-even-better)

---
Most used:
- [Install](https://github.com/cylmat/docs/tree/main/install) : Windows apps, Vscode extentions, apt shell scripts... 
- [Utils](https://github.com/cylmat/docs/tree/main/utils) : Coding, security, project useful tools...
- [Create clean Symfony project](https://github.com/cylmat/docs/blob/main/install/script/create-symfony-project.sh)

---
Suggested:
- https://dev.to/lissy93/cli-tools-you-cant-live-without-57f6
- https://dev.to/abdfnx/oh-my-zsh-powerlevel10k-cool-terminal-1no0
- https://dev.to/yogeshdev/make-your-unix-terminal-beautiful-productive-c1d
- https://pixxlisation.tech.blog/2020/04/15/ohmyzsh-tmux-powerline-un-terminal-pour-les-gouverner-tous

---
Ref:
- [Delivery apps reference](https://github.com/cylmat/docs/blob/main/Form/Archilog/Cloud-Delivery-Models.png)
- [Roadmap full-stack](https://roadmap.sh/full-stack)
