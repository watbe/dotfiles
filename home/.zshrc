# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="af-magic"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias l="ls -la"
alias install="sudo pacman -S"
alias dotfiles="cd $HOME/.homesick/repos/dotfiles && git commit -a && git push && cd -"
alias homeshick="$HOME/.homesick/repos/homeshick/home/.homeshick"
alias hm="homeshick"
alias v="vim"
alias pacman="sudo pacman --color always"
alias pac="pacman"

# Wireless
alias resnet-status="sudo netctl status wlp4s0-Resnet"
alias resnet-start="sudo netctl start wlp4s0-Resnet"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git archlinux colorize cp django pip svn python github git-extras theme virtualenv)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/core_perl
export EDITOR="vim"

# Start up
# Check for homeshick refresh
homeshick --quiet refresh

# Enable 256 color
if [ -e /usr/share/terminfo/x/xterm-256color ]; then
        export TERM='xterm-256color'
else
        export TERM='xterm-color'
fi

# turns on autoscroll in firefox (prevents sync updates)
echo "\\nuser_pref("general.autoScroll", "true");">>$HOME/.mozilla/firefox/*.default/prefs.js
