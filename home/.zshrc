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
plugins=(git colorize cp github git-extras theme ruby rails coffee bundler docker golang postgres rale rbenv redis-cli screen ssh-agent sudo vi-mode)

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)

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
alias update="yaourt -Syua"

# Power management
alias suspend="sudo pm-suspend"
alias sleep="sleep 1 && xset dpms force off"

# ZSHRC management
alias sz='source ~/.zshrc'
alias ez='vim ~/.zshrc'

# Screen Brightness
if [[ $HOST = nick ]] ; then
	alias smin="sudo sh -c \"echo 0 > /sys/class/backlight/acpi_video0/brightness\""
	alias smed="sudo sh -c \"echo 7 > /sys/class/backlight/acpi_video0/brightness\""
	alias smax="sudo sh -c \"echo 15 > /sys/class/backlight/acpi_video0/brightness\""
fi

# better ping
alias ping="mtr"

# VirtualENV stuff
#VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
#export WORKON_HOME=~/.virtualenvs
#source /usr/bin/virtualenvwrapper.sh

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/core_perl:$HOME/.gem/ruby/2.0.0/bin:$HOME/go/bin
export EDITOR="vim"

# Start up
# Check for homeshick refresh
source $HOME/.homesick/repos/homeshick/homeshick.sh

# switch to stop display sleep
alias nosleep="xset s off; xset -dpms"
alias yessleep="xset s on; xset +dpms"

# For screen to work properly with vim
export TERM=xterm-256color

# add ruby gems to path:
PATH="`ruby -e 'print Gem.user_dir'`/bin:$PATH"

# JUMP
export MARKPATH=$HOME/.marks
function jump {
cd -P $MARKPATH/$1 2>/dev/null || echo "No such mark: $1"
}
function mark {
mkdir -p $MARKPATH; ln -s $(pwd) $MARKPATH/$1
}
function unmark {
rm -i $MARKPATH/$1
}
function marks {
ls -l $MARKPATH | sed 's/ / /g' | cut -d' ' -f9- | sed 's/ -/\t-/g' && echo
}
function _completemarks {
reply=($(ls $MARKPATH))
}
compctl -K _completemarks jump
compctl -K _completemarks unmark

<<<<<<< HEAD
alias j="jump"

export GOPATH=$HOME/go
export GOROOT=$HOME/go-src/go
#unset GOROOT

alias b="tmux a -t background"
alias w="tmux a -t wayne"
alias new-b="tmux -2 new -s background"
alias new-w="tmux -2 new -s wayne"

# never use grep
alias grep="ag"

export PATH=$PATH:$HOME/go-src/go/bin

# Map 'jj' to vi-mode
bindkey -M viins 'jj' vi-cmd-mode

export GOPATH=$HOME/go

alias service="sudo systemctl"
alias pmixer="pavucontrol"
