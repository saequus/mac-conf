export LDFLAGS="-I/usr/local/opt/openssl/include -L/usr/local/opt/openssl/lib"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export CPPFLAGS=-I/usr/local/opt/openssl/include
export LDFLAGS=-L/usr/local/opt/openssl/lib

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="jonathan"


HIST_STAMPS="yyyy-mm-dd"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(git ruby)

# User configuration
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/Users/slavaspetsyian/Library/Python/3.8/bin":$PATH
export PATH="/Users/slavaspetsyian/Library/Python/3.7/bin":$PATH
export PATH="/Users/slavaspetsyian/Library/Python/3.6/bin":$PATH
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
export PATH="/usr/local/opt/gettext/bin:$PATH"
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="/usr/local/opt:$PATH"

source $ZSH/oh-my-zsh.sh

# HOMEBREW
export HOMEBREW_NO_ANALYTICS=1
