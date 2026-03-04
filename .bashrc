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

# ne 1
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

# dotnet
DOTNET_DEFAULT_VER="10.0"
export DOTNET_ROOT="$DEVELOPMENT";
export DOTNET_HOME="$DEVELOPMENT";

export DOTNET_CLI_HOME="$DOTNET_ROOT";

export NUGET_PACKAGES="$DEVELOPMENT/nuget-packages";

export PATH="$PATH:$DOTNET_ROOT";
export PATH="$PATH:$DOTNET_HOME";
export PATH="$PATH:$DOTNET_CLI_HOME";
export PATH="$PATH:$NUGET_PACKAGES";

export PATH="$PATH:$DOTNET_ROOT/.nuget/lib";
export PATH="$PATH:$DOTNET_ROOT/.nuget/lib/net$DOTNET_DEFAULT_VER";
export PATH="$PATH:$DOTNET_ROOT/.nuget/content/LanguageServer/linux-x64";

# not sure for these 3
export PATH="$PATH:$DOTNET_ROOT:$DOTNET_ROOT/tools";
export PATH="$PATH:$DOTNET_HOME:$DOTNET_HOME/tools";
export PATH="$PATH:$DOTNET_CLI_HOME:$DOTNET_CLI_HOME/tools";

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

eval "$(rbenv init - --no-rehash bash)"

RBENV_ACTIVE_VERSION=$(cat "$RBENV_ROOT/version");
export PATH="$PATH:$RBENV_ROOT/versions/$RBENV_ACTIVE_VERSION/bin";
export PATH="$PATH:$RBENV_ROOT/versions/$RBENV_ACTIVE_VERSION/lib";
export PATH="$PATH:$RBENV_ROOT/versions/$RBENV_ACTIVE_VERSION/share";
export PATH="$PATH:$RBENV_ROOT/versions/$RBENV_ACTIVE_VERSION/include";

# var
export SEARXNG_URL="http://localhost:12345";

# extends
if [ -n "$HOME/.podman-container" ]; then
    source "$HOME/.podman-container/env.sh";
fi
source ~/.bash_profile;

# OTHERS


# Added by LM Studio CLI (lms)
export PATH="$PATH:/home/pr/.lmstudio/bin"
# End of LM Studio CLI section

