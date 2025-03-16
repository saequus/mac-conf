# Python runtime
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Path to your oh-my-zsh installation.
export ZSH="/Users/USER/.oh-my-zsh"

# Path for compilers ----
# Path to openssl
export LDFLAGS="-L/opt/homebrew/opt/openssl@1.1/lib"
export CPPFLAGS="-I/opt/homebrew/opt/openssl@1.1/include"

# Path to readline
export LDFLAGS="-L/opt/homebrew/opt/readline/lib"
export CPPFLAGS="-I/opt/homebrew/opt/readline/include"

# Path to sqlite
export LDFLAGS="-L/opt/homebrew/opt/sqlite/lib"
export CPPFLAGS="-I/opt/homebrew/opt/sqlite/include"

# Path to zlib
export LDFLAGS="-L/opt/homebrew/opt/zlib/lib"
export CPPFLAGS="-I/opt/homebrew/opt/zlib/include"

# Path to openldap
export LDFLAGS="-L/opt/homebrew/opt/openldap/lib"
export CPPFLAGS="-I/opt/homebrew/opt/openldap/include"

# Path to curl
export LDFLAGS="-L/opt/homebrew/opt/curl/lib"
export CPPFLAGS="-I/opt/homebrew/opt/curl/include"

# Other compilers
export CPPFLAGS=-I/usr/local/opt/openssl/include
# export LDFLAGS=-L/usr/local/opt/openssl/lib


export LDFLAGS="-L/opt/homebrew/opt/openssl@3/lib"
export CPPFLAGS="-I/opt/homebrew/opt/openssl@3/include"

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="jonathan"

HIST_STAMPS="yyyy-mm-dd"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(git ruby)

###############################################
# USER CUSTOM CONFIGURATIONS
# The configurations below might be needed to be changed
# if you have a different set of programms.
###############################################
# export PATH="/opt/homebrew/Cellar:$PATH"

# Python
export PATH="/Users/${USER}/Library/Python/3.7/bin:$PATH"
export PATH="/Users/${USER}/Library/Python/3.6/bin:$PATH"
export PATH="/Users/${USER}/Library/Python/3.10/bin:$PATH"

export PATH="/opt/homebrew/bin/:$PATH"


# Java
export PATH="/usr/bin/java/:$PATH"

# Ruby
export PATH="/opt/homebrew/lib/ruby/gems/3.0.0/bin:$PATH"
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"

export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
export PATH="/usr/local/opt/gettext/bin:$PATH"
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="/usr/local/opt:$PATH"

# Homebrew first
export PATH="/opt/homebrew/bin:$PATH"


source $ZSH/oh-my-zsh.sh

# HOMEBREW
export HOMEBREW_NO_ANALYTICS=1

export PATH="/opt/homebrew/opt/ruby/bin:$PATH"

# aliases
alias k='kubectl'
alias python=python3

# Poetry version 1.7
alias pp="$HOME/.local/bin/poetry"
export PATH="$HOME/.local/bin:$PATH"
export PATH="/opt/homebrew/opt/postgresql@13/bin:$PATH"
export PKG_CONFIG_PATH="/opt/homebrew/opt/openssl@1.1/lib/pkgconfig"
export PROJ_DIR="/opt/homebrew/Cellar/proj/8.2.0"

# MacOS
export PATH="/opt/homebrew/opt/openssl@3/bin:$PATH"
export PATH="/opt/homebrew/opt/openssl@3/bin:$PATH"
export MAGICK_HOME=/opt/homebrew/Cellar/imagemagick/7.1.0-37_1
export PATH="/opt/homebrew/Cellar/imagemagick/7.1.0-37_1/bin:$PATH"


export PATH="/opt/homebrew/opt/imagemagick@6/bin:$PATH"
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export PATH="/Users/spetsyian/Library/Python/3.10/bin:$PATH"

# Nvim
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh


# Kubernetes
[[ $commands[kubectl] ]] && source <(kubectl completion zsh)

# Go
export GO111MODULE="on"
export GOEXPERIMENT=arenas
export GOPATH=/opt/homebrew
export PATH=$PATH:$GOPATH/bin


# Rust
export PATH="$HOME/.cargo/bin:$PATH"
. "$HOME/.cargo/env"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/spetsyian/Documents/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/spetsyian/Documents/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/spetsyian/Documents/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/spetsyian/Documents/google-cloud-sdk/completion.zsh.inc'; fi
