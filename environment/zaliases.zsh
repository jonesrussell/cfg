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
#alias dtc="cd /home/russell/transmission-complete"
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
#alias s="source ~/.zshrc"
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
alias lsc="ls -lABCh --group-directories-first"
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
alias lspath="echo \$PATH | tr : '\n'"
alias duh1="du -hd 1 -t 1M"
alias duh10="du -hd 1 -t 10M"
alias duh100="du -hd 1 -t 100M"
alias duh1000="du -hd 1 -t 1000M"
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
alias te="trash-empty"
alias fixx="sudo xrandr --addmode DP-2 1440x900"
alias sarv="sudo apt remove --purge -y"
alias glances="glances -C /home/russell/.config/glances.conf"
alias s="sudo"

function gitall() {
    git add .
    if [ "$1" != "" ]
    then
        git commit -m "$1"
    else
        git commit -m "WIP" # default commit message is `update`
    fi # closing statement of if-else block
    # git push origin HEAD
}

function gitsol() {
    git add .
    if [ "$1" != "" ]
    then
        git commit -m "$1"
    else
        git commit -m "Solution" # default commit message is `update`
    fi # closing statement of if-else block
    # git push origin HEAD
}

function sarm() {
    sudo apt-get remove $@ -y && sudo apt-get autoremove -y
}

alias rancher="ssh rancher@142.93.147.10"
alias nightbrother="ssh russell@192.168.42.79"

# export OPENFAAS_URL=$(kubectl get svc -n openfaas gateway-external -o jsonpath='{.status.loadBalancer.ingress[*].ip}'):8080

alias brightness-1="xrandr --output eDP-1 --brightness 0.1"
alias brightness-2="xrandr --output eDP-1 --brightness 0.2"
alias brightness-3="xrandr --output eDP-1 --brightness 0.3"
alias brightness-4="xrandr --output eDP-1 --brightness 0.4"
alias brightness-5="xrandr --output eDP-1 --brightness 0.5"
alias brightness-6="xrandr --output eDP-1 --brightness 0.6"
alias brightness-7="xrandr --output eDP-1 --brightness 0.7"
alias brightness-8="xrandr --output eDP-1 --brightness 0.8"
alias brightness-9="xrandr --output eDP-1 --brightness 0.9"
alias brightness-10="xrandr --output eDP-1 --brightness 1.0"

