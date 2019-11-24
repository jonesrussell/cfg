# export JAVA_HOME=/usr/lib/jvm/jdk-12.0.2

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# export PATH=$HOME/.local/bin:/usr/local/bin:$JAVA_HOME/bin:$PATH
export PATH="$(composer config -g home)/vendor/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="/home/russell/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

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
source "${HOME}/.local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions)

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias xclip="xclip -selection clipboard"

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

export JAVA_HOME=/usr/lib/jvm/jdk-13.0.1
export PATH=$JAVA_HOME/bin:$PATH

# fnm
export PATH=/home/russell/.fnm:$PATH
eval "`fnm env --multi`"

alias tj="cd ~/Development/TechJones"

##
## Configuration for ~/.local/{bin,share} 
##

export LOCAL="$HOME/.local"
export BIN="${LOCAL}/bin"
export SHARE="${LOCAL}/share"

# Custom scripts
export CUSTOM="${SHARE}/custom"

# Aliases
alias loc="cd ${LOCAL}"
alias locb="cd ${BIN}"
alias locs="cd ${SHARE}"
alias locsc="cd ${CUSTOM}"

alias ebon="ssh ebon-hawk"
alias bserve="ssh bserve"
alias nightbrother="ssh nightbrother"

