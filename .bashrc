#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# posh
eval "$(oh-my-posh init bash --config ~/.poshthemes/multiverse-neon.omp.json)"

# core: DEVELOPMENT
export DEVELOPMENT="/mnt/256a1";

export PATH="$PATH:$DEVELOPMENT/bin";
export PATH="$PATH:$DEVELOPMENT/lib";
export PATH="$PATH:$DEVELOPMENT/opt";
export PATH="$PATH:$DEVELOPMENT/share";
export PATH="$PATH:$DEVELOPMENT/include";

# ne
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$DEVELOPMENT/lib";
export C_INCLUDE_PATH="$C_INCLUDE_PATH:$DEVELOPMENT/include";

# rust
export CARGO_HOME="$DEVELOPMENT/cargo";
export RUSTUP_HOME="$DEVELOPMENT/rustup";

export PATH="$PATH:$CARGO_HOME/bin";

# zig: reserved (part of $DEVELOPMENT/{bin,lib,include,share})

# go
export GOPATH="$DEVELOPMENT/golang";

export PATH="$PATH:$GOPATH/bin";
export PATH="$PATH:$GOPATH/pkg";

# nvm
export NVM_DIR="$DEVELOPMENT/nvm";
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh";
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion";

if [ -n "$NVM_DIR" ]; then
    NODE_VER=$(node -v);

    export PATH="$PATH:$NVIM_DIR/version/node/$NODE_VER/include";
fi

# bun
export BUN_INSTALL="$DEVELOPMENT/bun";
export PATH="$BUN_INSTALL/bin:$PATH";

# ruby
export RBENV_ROOT="$DEVELOPMENT/rbenv";
export PATH="$PATH:$RBENV_ROOT/bin";

eval "$(rbenv init - --no-rehash bash)"

# var
export SEARXNG_URL="http://localhost:12345";

# extends
if [ -n "$HOME/.podman-container" ]; then
    source "$HOME/.podman-container/env.sh";
fi
source ~/.bash_profile;

# OTHERS

