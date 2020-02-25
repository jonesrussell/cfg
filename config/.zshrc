# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# export PATH=$HOME/.local/bin:/usr/local/bin:$JAVA_HOME/bin:$PATH

############################
# Set some handy variables #
############################

# Path to your oh-my-zsh installation.
export ZSH="/home/russell/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="palenight"

export ZSH_THEME_SHOW_HOST=true

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Enable syntax highlighting
# source "${HOME}/.local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#plugins=(git zsh-autosuggestions)
plugins=(
    composer
    cp
    docker
    docker-compose
    drush
    git
    ionic
    laravel
    nmap
    node
    npm
    npx
    rsync
    systemd
    sudo
#    thefuck
    ufw
    vscode
    web-search
    zsh-autosuggestions
    zsh-interactive-cd
    zsh-navigation-tools
    zsh-safe-rm
)

source $ZSH/oh-my-zsh.sh

# Remove user name and device name from prompt
# prompt_context() {} 

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

source "${HOME}/.env.home"

# export PATH="$(composer config -g home)/vendor/bin:$PATH"
PATH="$(${COMPOSER_BINARY} config -g home)/vendor/bin:$PATH"

# export MATTERMOST_TEAM_NAME=Skeet
# export MATTERMOST_URL=127.0.0.1
# export MATTERMOST_USERNAME=nightpatter
# export MATTERMOST_PASSWORD=a9cgseuojbrrzg9r31m66o4j6e
# export MATTERMOST_PORT="8065"

# alias df="df -h"

# Magnificent utility
eval $(thefuck --alias)

# Solarized Dark colors
eval `dircolors ~/.dir_colors/dircolors`

#export JAVA_HOME=/usr/lib/jvm/jdk-13.0.1
#PATH=$JAVA_HOME/bin:$PATH

# fnm
PATH=/home/russell/.fnm:$PATH
eval "`fnm env --multi --shell=zsh --use-on-cd`"

# Android IDE
PATH="${PATH}:${SHARE}/android-studio/bin"

# Android Sdk
export ANDROID_HOME="${SHARE}/Android/Sdk"
PATH="${PATH}:${ANDROID_HOME}/tools"
PATH="${PATH}:${ANDROID_HOME}/platform-tools"

# Zsh, ~/.zshrc
# eval "$(grunt --completion=zsh)"

##
## Configuration for ~/.local/{bin,share} 
##

export OPENFAAS_PREFIX="jonesrussell"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias xclip="xclip -selection clipboard"

# Aliases
alias loc="cd ${LOCAL}"
alias locb="cd ${BIN}"
alias locs="cd ${SHARE}"
alias locsc="cd ${CUSTOM}"

alias tj="cd ~/Development/TechJones"

alias ebon-hawk="ssh ebon-hawk"
alias ebon="ebon-hawk"
alias bserve="ssh bserve"
alias nightbrother="ssh nightbrother"
alias raven="ssh ravens-claw"
alias black-one="ssh black-one.russelljones.ca"
alias razor-crest="ssh razor-crest.russelljones.ca"

alias saud="sudo apt update"
alias saug="sudo apt upgrade -y"
alias udug="saud && saug"
alias sai="sudo apt install"

# Joplin
alias jnotes="curl -s http://localhost:41184/notes\?token\=17c90887cd27dc08815dabd6b0711e078ae29ba8e712556e7398bfef2fa1985d247ac9aebab81482c9123dc7e2530a7c56c463290dcef48241f62625464b5f13 | python -m json.tool"

alias c="clear"
alias s="source ~/.zshrc"
alias z="vim /home/russell/.zshrc"

PATH="$HOME/.cargo/bin:$PATH"

export GOPATH=${SHARE}/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin

alias e="echo"

alias dellast="sed -i '$ d' $@"

alias v="vim $@"

alias brd="sudo /home/russell/.local/bin/backlight down"
alias bru="sudo /home/russell/.local/bin/backlight up"

alias awerc="vim /home/russell/.config/awesome/rc.lua"
alias gci="git commit -m 'Initial commit'"

alias lspath="echo $PATH | tr : '\n'"

alias duh1="du -hd 1 -t 1M"
alias duh10="du -hd 1 -t 10M"
alias duh100="du -hd 1 -t 100M"

alias l="ls -lah --group-directories-first"
alias ll="ls -lh --group-directories-first"

# junegunn / fzf
# cherry_blossom A command-line fuzzy finder
# 
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias kk="ps aux | grep chrom | grep 'disable-databases'| awk '{print $2}' | xargs kill -9"

