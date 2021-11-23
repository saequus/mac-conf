# export LDFLAGS="-I/usr/local/opt/openssl/include -L/usr/local/opt/openssl/lib"

# Ruby compilers
# export PKG_CONFIG_PATH="/opt/homebrew/opt/ruby/lib/pkgconfig"
# export LDFLAGS="-L/opt/homebrew/opt/ruby/lib"
# export LDFLAGS="-L/usr/local/opt/openssl/lib"
# export CPPFLAGS="-I/opt/homebrew/opt/ruby/include"

# Python runtime
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Path to your oh-my-zsh installation.
export ZSH="/Users/paul/.oh-my-zsh"

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

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="jonathan"


HIST_STAMPS="yyyy-mm-dd"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(git ruby)

# User configuration

export PATH="/opt/homebrew/Cellar:$PATH"
export PATH="/Users/slavaspetsyian/Library/Python/3.8/bin:$PATH"
export PATH="/Users/slavaspetsyian/Library/Python/3.7/bin:$PATH"
export PATH="/Users/slavaspetsyian/Library/Python/3.6/bin:$PATH"

export PATH="/opt/homebrew/bin/:$PATH"
# Java
export PATH="/usr/bin/java/:$PATH"

# Ruby
export PATH="/opt/homebrew/lib/ruby/gems/3.0.0/bin:$PATH"
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
# export PATH="/usr/bin/ruby:$PATH"
# export PATH="$HOME/.gem/ruby/2.6.0/bin:$PATH"

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

export PATH="/opt/homebrew/opt/postgresql@13/bin:$PATH"

export PROJ_DIR="/opt/homebrew/Cellar/proj/8.2.0"
