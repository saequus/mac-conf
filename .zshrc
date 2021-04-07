export LDFLAGS="-I/usr/local/opt/openssl/include -L/usr/local/opt/openssl/lib"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export CPPFLAGS=-I/usr/local/opt/openssl/include
export LDFLAGS=-L/usr/local/opt/openssl/lib

export PATH="/usr/local/opt/gettext/bin:$PATH"
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="/usr/local/opt:$PATH"

export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/Users/slavaspetsyian/Library/Python/3.8/bin":$PATH
export PATH="/Users/slavaspetsyian/Library/Python/3.7/bin":$PATH
export PATH="/Users/slavaspetsyian/Library/Python/3.6/bin":$PATH

export PYENV_ROOT=/usr/local/var/pyenv
PYTHONHOME=/usr/lib/python2.7
PYENV_ROOT="$HOME/.pyenv"
PATH="$PYENV_ROOT/bin:$PATH"
ZDOTDIR=~/.zsh

export PATH="$PATH:$HOME/bin:./node_modules/.bin/"
export PYTHONSTARTUP=~/.pythonrc

export EDITOR=vim


# Path to your oh-my-zsh installation.
export ZSH="/Users/slavaspetsyian/.oh-my-zsh"

# https://github.com/rafi/awesome-vim-colorschemes
ZSH_THEME="jonathan"

export HISTTIMEFORMAT="%t%d.%m.%y %H:%M:%S%t"
export HISTIGNORE="&:ls:[bf]g:exit"
HISTFILE=~/.zsh/history.log
HISTSIZE=2000
SAVEHIST=$HISTSIZE
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_find_no_dups
setopt appendhistory
setopt sharehistory

# bind UP and DOWN arrow keys
# next two lines work locally
bindkey '\e[A' history-beginning-search-backward
bindkey '\e[B' history-beginning-search-forward
# next two lines work over ssh
[[ -n "${key[Up]}" ]] && bindkey "${key[Up]}" history-beginning-search-backward
[[ -n "${key[Down]}" ]] && bindkey "${key[Down]}" history-beginning-search-forward

setopt autocd
setopt notify
setopt extendedglob
unsetopt beep
unsetopt nomatch
unsetopt correct_all


# Load aliases if they exist.
[ -f "${HOME}/.aliases" ] && source "${HOME}/.aliases"
[ -f "${HOME}/.aliases.local" ] && source "${HOME}/.aliases.local"

### Aliases
alias cd="venv_cd"

alias ll='ls -l'
alias python3.5="/usr/local/bin/python3.5"
alias du='du --human-readable --total -d0'
alias df='df --human-readable'
alias grep='grep --color=auto'
alias killall="killall --interactive --verbose"
alias tmux='tmux -2'
alias nohup='nohup > /dev/null $1'
alias free="free -t -m"

alias wifi-menu="sudo wifi-menu"

alias ssha='eval $(ssh-agent) && ssh-add ~/.ssh/id_rsa && echo SSH_AUTH_SOCK=$SSH_AUTH_SOCK'

alias pacmanc="sudo pacman --config=/home/pacman/pacman.conf"
alias pacaur="pacaur --rebuild"
alias cower="cower --color=auto --rsort=votes"

if [[ "$TERM" == *256* ]]; then
    alias mc="mc -S modarin256"
else
    alias mc="mc -S default"
fi

alias o=xdg-open
alias myip="curl ip.appspot.com"
alias timesync='sudo ntpdate ua.pool.ntp.org'
alias rsyncc='rsync -aAXHvh --stats'
alias rsyncp='rsync -rth --progress --stats'
alias rand16='openssl rand -hex 16'

alias pipi="pip install"
alias pipu="pip uninstall"
alias pipw="pip wheel"
alias pips="pip search"

alias pyclean="find . -name \"*.pyc\" -exec rm -rf {} \;"
alias pysmtpd="python -m smtpd -n -c DebuggingServer localhost:1025"

alias dockerc='\
    v=$(docker ps -q) && [ -n "$v" ] && docker stop $(echo $v);\
    v=$(docker ps -a -q) && [ -n "$v" ] && docker rm $(echo $v);\
    v=$(docker images -qf "dangling=true") && [ -n "$v" ] && docker rmi $(echo $v);\
    docker images\
'

alias lxc-ls='sudo lxc-ls'
alias lxc-destroy='sudo lxc-destroy'
alias lxc-start='sudo lxc-start'
alias lxc-stop='sudo lxc-stop'
alias lxc-attach='sudo lxc-attach'

### Prompt
autoload colors; colors
setopt prompt_subst

# Decide if we need to set titlebar text.
case $TERM in
    (xterm*|rxvt)
        titlebar_precmd () { print -Pn "\e]0;%n@%m: %~\a" }
        titlebar_preexec () { print -Pn "\e]0;$1 %n@%m: %~\a" }
        ;;
    (screen*)
        titlebar_precmd () { print -Pn "\e]0;%n@%m: %~ $1\a" }
        titlebar_preexec () { print -Pn "\e]0;%n@%m: %~ $1\a" }
        ;;
    (*)
        titlebar_precmd () {}
        titlebar_preexec () {}
        ;;
esac
precmd () {
    titlebar_precmd $*
}
preexec () {
    titlebar_preexec $*
}

pwd_length() {
  local length
  (( length = $COLUMNS / 2 - 25 ))
  echo $(($length < 20 ? 20 : $length))
}

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
