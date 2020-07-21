##
# zsh aliases
##

# Examples
# alias zshconfig="vim ~/.zshrc"
# alias ohmyzsh="vim ~/.oh-my-zsh"

# F5/F6 brightness keys on HP Elitebook
alias brd="sudo ${BIN}/backlight down"
alias bru="sudo ${BIN}/backlight up"

#
# Laravel
alias vca="./vessel art clear-compiled && ./vessel art config:clear && ./vessel art cache:clear"

alias loc="cd ${LOCAL}"
alias locb="cd ${BIN}"
alias locs="cd ${SHARE}"
alias locsc="cd ${CUSTOM}"
alias mm2k="cd /mnt/usb-2000/media/movies"
alias dtc="cd /home/russell/transmission-complete"
alias dev="cd ${DEV}"
alias devhd="cd ${DEVHD}"

# galaxy.lan
alias ebon-hawk="ssh ebon-hawk"
alias ebon="ebon-hawk"
alias bserve="ssh bserve"
alias nightbrother="ssh nightbrother"
alias raven="ssh ravens-claw"
alias black-one="ssh black-one.jonesrussell42.xyz"
alias razor-crest="ssh razor-crest.jonesrussell42.xyz"

# Joplin
alias jnotes="curl -s http://localhost:41184/notes\?token\=${JOPLIN_TOKEN} | python -m json.tool"
alias dellast="sed -i '$ d' $@"

# Alphabetic
alias c="clear"
alias s="source ~/.zshrc"
alias z="vim /home/russell/.zshrc"
alias e="echo"
alias v="vim $@"

alias brd="sudo /home/russell/.local/bin/backlight down"
alias bru="sudo /home/russell/.local/bin/backlight up"
alias awerc="vim ${HOME}/.config/awesome/rc.lua"

# Linux system
alias duh1="du -hd 1 -t 1M"
alias duh10="du -hd 1 -t 10M"
alias duh100="du -hd 1 -t 100M"
alias duh1000="du -hd 1 -t 1000M"
alias l="ls -lah --group-directories-first"
alias ll="ls -lh --group-directories-first"
# alias df="df -h"
alias df='df -h -x squashfs -x tmpfs -x devtmpfs'
alias saud="sudo apt update"
alias saug="sudo apt upgrade -y"
alias udug="saud && saug"
alias sai="sudo apt install"

# Git
alias gci="git commit -m 'Initial commit'"

# Misc
alias kk="ps aux | grep chrom | grep 'disable-databases'| awk '{print $2}' | xargs kill -9"
alias findname="find . -name "$@" -print"
alias tree1="tree -L 2"
alias lessh='LESSOPEN="| /usr/bin/src-hilite-lesspipe.sh %s" less -M '
alias dellast="sed -i '$ d' $@"
alias lspath="echo $PATH | tr : '\n'"
alias duh1="du -hd 1 -t 1M"
alias duh10="du -hd 1 -t 10M"
alias duh100="du -hd 1 -t 100M"
alias duh1000="du -hd 1 -t 1000M"
alias l="ls -lah --group-directories-first"
alias ll="ls -lh --group-directories-first"
alias lessh='LESSOPEN="| /usr/bin/src-hilite-lesspipe.sh %s" less -M '
alias kk="ps aux | grep chrom | grep 'disable-databases'| awk '{print $2}' | xargs kill -9"
alias vca="./vessel art clear-compiled && ./vessel art config:clear && ./vessel art cache:clear"
alias checkmyip="dig +short myip.opendns.com @resolver1.opendns.com"
alias za="vim /home/russell/.oh-my-zsh/custom/zaliases.zsh"
alias zv="vim /home/russell/.oh-my-zsh/custom/variables.zsh"
alias xpwd="pwd|xclip"
# pipe to xclip (e.g. ) == copy to clipboard
alias xclip="xclip -selection clipboard"
alias ssh-keycopy="cat ~/.ssh/id_rsa.pub|xclip"
alias cgrx="$HOME/.composer/vendor/bin/cgr"
alias ddcr="ddev drush cr"
