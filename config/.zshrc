# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# export PATH=$HOME/.local/bin:/usr/local/bin:$JAVA_HOME/bin:$PATH

############################
# Set some handy variables #
############################

# Path to your oh-my-zsh installation.
export ZSH="${HOME}/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

export ZSH_THEME_SHOW_HOST=true

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
ZSH_THEME_RANDOM_CANDIDATES=(
"robbyrussell"
"palenight"
"agnoster"
)

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=7

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

# Plugins
#
# ${ZSH}/plugins/*
# ${ZSH}/custom/plugins/.
#
# * Too many plugins slow down shell startup.
plugins=(
    nvm
    zsh-better-npm-completion
#    composer
    cp
    docker
    docker-compose
#    drush
#    emoji-clock
    git
    nmap
#    node
#    npm
    rsync
    ssh-agent
    sudo
    systemd
    ufw
    zsh-autosuggestions
    zsh-navigation-tools
    zsh-safe-rm
    zsh-syntax-highlighting
    zsh_reload
#    site-functions
#    ionic
#    laravel
#    npx
#    thefuck
#    vscode
#    web-search
 )

source $ZSH/oh-my-zsh.sh

export HISTSIZE=1000000000
export SAVEHIST=$HISTSIZE
setopt EXTENDED_HISTORY

# Remove user name and device name from prompt
# prompt_context() {}

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_CA.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Solarized Dark colors
eval `dircolors ~/.dir_colors/dircolors`

# junegunn / fzf
# A command-line fuzzy finder
#
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Ruby Version Manager
# source "/etc/profile.d/rvm.sh"

[[ /home/russell/.arkade/bin/kubectl ]] && source <(kubectl completion zsh)

# OpenFaaS
# source <(faas-cli completion --shell zsh)

# nvm use .nvmrc (automagicly)
autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

