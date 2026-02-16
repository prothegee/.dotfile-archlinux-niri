#
# ~/.bashrc
#

[[ $- != *i* ]] && return;

alias ls='ls --color=auto';
alias grep='grep --color=auto';
PS1='[\u@\h \W]\$ ';

# core
export PATH="$PATH:$HOME/bin";
export PATH="$PATH:$HOME/lib";
export PATH="$PATH:$HOME/share";
export PATH="$PATH:$HOME/opt";
export PATH="$PATH:$HOME/include";

export PATH="$PATH:$HOME/.local/bin";

export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$HOME/lib";
export C_INCLUDE_PATH="$C_INCLUDE_PATH:$HOME/include";

# rust
export CARGO_HOME="$HOME/.cargo";
export RUSTUP_HOME="$HOME/.rust";

export PATH="$PATH:$CARGO_HOME/bin";

# zig

# go
export GOPATH="$HOME/.go";

export PATH="$PATH:$GOPATH/bin";
export PATH="$PATH:$GOPATH/pkg";

# ruby
# export PATH="$PATH:$HOME/.rbenv/shims";
# export PATH="$PATH:$HOME/.rbenv/versions/3.4.8/bin";
# export PATH="$PATH:$HOME/.rbenv/versions/3.4.8/lib";
# export PATH="$PATH:$HOME/.rbenv/versions/3.4.8/include";
# export PATH="$PATH:$HOME/.rbenv/versions/3.4.8/share";

# ruby: bin
export PATH="$PATH:$HOME/.gem/bin";

eval "$(rbenv init - --no-rehash bash)"

# node/javascript/typescript
export BUN_INSTALL="$HOME/.bun";
export PATH="$BUN_INSTALL/bin:$PATH";

export NVM_DIR="$HOME/.config/nvm";
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh";
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion";

if [ -n "$NVM_DIR" ]; then
    NODE_VER=$(node -v);

    export PATH="$PATH:$NVIM_DIR/version/node/$NODE_VER/include";
fi

# posh
eval "$(oh-my-posh init bash --config ~/.poshthemes/multiverse-neon.omp.json)";

# extend
source ~/.bash_profile;

if [ -n "$HOME/.podman-container" ]; then
    source "$HOME/.podman-container/env.sh";
fi

# Added by LM Studio CLI (lms)
export PATH="$PATH:/home/pr/.lmstudio/bin"
# End of LM Studio CLI section

export SEARXNG_URL="http://localhost:12345"
