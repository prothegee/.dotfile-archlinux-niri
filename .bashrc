#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# posh
eval "$(oh-my-posh init bash --config ~/.poshthemes/star.omp.json)"
# eval "$(oh-my-posh init bash --config ~/.poshthemes/pure.omp.json)"
# eval "$(oh-my-posh init bash --config ~/.poshthemes/multiverse-neon.omp.json)"

# core: DEVELOPMENT
export DEVELOPMENT="/mnt/256a1";
# # core: DEVELOPMENT_REPO
# export DEVELOPMENT_REPO="$DEVELOPMENT/repo";

export PATH="$PATH:$DEVELOPMENT/bin";
export PATH="$PATH:$DEVELOPMENT/lib";
export PATH="$PATH:$DEVELOPMENT/opt";
export PATH="$PATH:$DEVELOPMENT/share";
export PATH="$PATH:$DEVELOPMENT/include";

# ne 1
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$DEVELOPMENT/lib";
export C_INCLUDE_PATH="$C_INCLUDE_PATH:$DEVELOPMENT/include";

# zig
export PATH="$PATH:$DEVELOPMENT/zig";

# rust
export CARGO_HOME="$DEVELOPMENT/cargo";
export RUSTUP_HOME="$DEVELOPMENT/rustup";

export PATH="$PATH:$CARGO_HOME/bin";

# go
export GOPATH="$DEVELOPMENT/golang";

export PATH="$PATH:$GOPATH/bin";
export PATH="$PATH:$GOPATH/pkg";

# dotnet
export DOTNET_VERSION="10.0";
export DOTNET_ROOT="$HOME/.dotnet";

export PATH="$PATH:$DOTNET_ROOT";
export PATH="$PATH:$DOTNET_ROOT/tools";
export PATH="$PATH:$DOTNET_ROOT/nuget";

export PATH="$PATH:$DOTNET_ROOT/host/fxr/10.0.12";

export PATH="$PATH:$DOTNET_ROOT/lsp";
export PATH="$PATH:$DOTNET_ROOT/lsp/_rels";
export PATH="$PATH:$DOTNET_ROOT/lsp/lib/net$DOTNET_VERSION";
export PATH="$PATH:$DOTNET_ROOT/lsp/content/LanguageServer/neutral";
# export PATH="$PATH:$DOTNET_ROOT/lsp/content/LanguageServer/linux-x64";
export PATH="$PATH:$DOTNET_ROOT/lsp/package";

# java
export PATH="$PATH:$DEVELOPMENT/javad/bin";
if [ -f "$HOME/.sdkman/bin/sdkman-init.sh" ]; then
    source ~/.sdkman/bin/sdkman-init.sh
fi

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

# python
export PATH="$PATH:$HOME/.local/share/uv/tools/basedpyright/bin";

# ruby
export RBENV_ROOT="$DEVELOPMENT/rbenv";

eval "$(rbenv init - --no-rehash bash)"

RBENV_ACTIVE_VERSION=$(cat "$RBENV_ROOT/version");
export PATH="$PATH:$RBENV_ROOT/versions/$RBENV_ACTIVE_VERSION/bin";
export PATH="$PATH:$RBENV_ROOT/versions/$RBENV_ACTIVE_VERSION/lib";
export PATH="$PATH:$RBENV_ROOT/versions/$RBENV_ACTIVE_VERSION/share";
export PATH="$PATH:$RBENV_ROOT/versions/$RBENV_ACTIVE_VERSION/include";

# flutter
export FLUTTER_ROOT="$DEVELOPMENT/flutter";
export PATH="$PATH:$FLUTTER_ROOT/bin";

# elixir
export PATH="$PATH:$DEVELOPMENT/bin/elixir";

# android
export ANDROID="/mnt/256a1/android";
export ANDROID_HOME="$ANDROID/sdk";
export ANDROID_ROOT="$ANDROID_HOME";
export ANDROID_SDK_ROOT="$ANDROID/sdk";
# # android: bin lib jbr etc
# export PATH="$PATH:$ANDROID/studio/bin";
# export PATH="$PATH:$ANDROID/studio/lib";
# export PATH="$PATH:$ANDROID/studio/jbr/bin";
# export PATH="$PATH:$ANDROID/studio/jbr/conf";
# export PATH="$PATH:$ANDROID/studio/jbr/legal";
# export PATH="$PATH:$ANDROID/studio/jbr/lib";
# android: avd
export ANDROID_AVD_HOME"=$HOME/.config/.android/avd";

# docker
# export DOCKER_HOST='unix:///run/user/1000/podman/podman-machine-default-api.sock';

# var
export SEARXNG_URL="http://localhost:12345";
export OBS_WEBSOCKET_URL="obsws://localhost:4455/";

# extends
if [ -n "$HOME/.podman-container" ]; then
    source "$HOME/.podman-container/env.sh";
fi
if [ -f "$HOME/.bash_profile" ]; then
    source ~/.bash_profile;
fi
if [ -f "$HOME/.bash_private" ]; then
    source ~/.bash_private;
fi

export GTK_THEME=Adwaita:dark;

# OTHERS
eval "$(fzf --bash)"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/home/pr/.lmstudio/bin"
# End of LM Studio CLI section

# eval "task list";


# Added by Hugging Face CLI installer
export PATH="/home/pr/.local/bin:$PATH"

# pnpm
export PNPM_HOME="/home/pr/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME/bin:"*) ;;
  *) export PATH="$PNPM_HOME/bin:$PATH" ;;
esac
# pnpm end

# kimi-code
export PATH="/home/pr/.kimi-code/bin:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
