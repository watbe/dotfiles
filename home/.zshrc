# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="af-magic"

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
DISABLE_CORRECTION="true"
unsetopt correct

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git archlinux colorize cp django pip svn python github git-extras theme virtualenv virtualenvwrapper)

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias e="exit"
alias l="ls -lh"
alias ll="ls -la"
alias dotfiles="cd $HOME/.homesick/repos/dotfiles && git commit -a && git push && cd -"
alias homeshick="$HOME/.homesick/repos/homeshick/home/.homeshick"
alias hm="homeshick"
alias v="vim"
alias sv="sudo vim"
alias security="keychain"
alias deploy-wwbpm="$HOME/dotfiles/scripts/./deploy-wwbpm.sh"
alias x="(xterm &)>/dev/null"

# Pacman 
alias pacman="sudo pacman --color always"
alias pac="pacman"
alias install="sudo pacman -S"
alias remove="pacman -Rs"
alias aur="yaourt"

# Power management
alias suspend="sudo pm-suspend"
alias sleep="sleep 1 && xset dpms force off"

# ZSHRC management
alias sz='source ~/.zshrc'
alias ez='vim ~/.zshrc'

# Programs
#alias studio="$HOME/aur/android-studio/src/android-studio/bin/./studio.sh &"
alias studio="/opt/android-studio/bin/./studio.sh &"
#alias idea="$HOME/idea/bin/./idea.sh &"
alias idea="/usr/share/intellij-idea-ultimate-edition/bin/./idea.sh &"

# Screen Brightness
if [[ $HOST = nick ]] ; then
	alias smin="sudo sh -c \"echo 0 > /sys/class/backlight/acpi_video0/brightness\""
	alias smed="sudo sh -c \"echo 7 > /sys/class/backlight/acpi_video0/brightness\""
	alias smax="sudo sh -c \"echo 15 > /sys/class/backlight/acpi_video0/brightness\""
fi

# Wireless
alias resnet-status="sudo netctl status wlp4s0-Resnet"
alias resnet-start="sudo netctl start wlp4s0-Resnet"

# ssh aliases
alias aegir1="ssh -D 8080 -i $HOME/.ssh/aegir1.pem ubuntu@aegir1.lab273.com"
alias burg="ssh -i $HOME/.ssh/burg.pem ubuntu@burgmann.anu.edu.au"

# better ping
alias ping="mtr"

# inserts sudo at the start of the line
insert_sudo () { zle beginning-of-line; zle -U "sudo " }
zle -N insert-sudo insert_sudo
bindkey "^[s" insert-sudo

# VirtualENV stuff
VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export WORKON_HOME=~/.virtualenvs
source /usr/bin/virtualenvwrapper.sh

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/core_perl:$HOME/.gem/ruby/2.0.0/bin
export EDITOR="vim"

# Start up
# Check for homeshick refresh
homeshick --quiet refresh

# Mount drives...
#sudo mount -rw -t ntfs-3g /dev/sda3 /mnt/data

# Enable 256 color
if [ -e /usr/share/terminfo/x/xterm-256color ]; then
        export TERM='xterm-256color'
else
        export TERM='xterm-color'
fi

# shortens cd <dir> to just <dir>
# setopt AUTO_CD
