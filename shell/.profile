#!/bin/sh
# Profile file. Runs on login.

export PATH="${PATH}:/home/gagi/bin:/home/gagi/.gem/ruby/2.7.0/bin:/usr/lib/jvm/default/bin:/home/gagi/.yarn/bin:/home/gagi/.local/bin:/home/gagi/.dotnet/tools:/home/gagi/.local/share/go/bin"

export EDITOR="emacs -nw"
export TERMINAL="konsole"
export BROWSER="firefox"
export READER="zathura"
export FILE="ranger"

# less/man colors
export LESS=-R
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin bold
export LESS_TERMCAP_md=$'\E[1;36m'     # begin blink
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline

alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ip='ip -color=auto'
alias dmesg='dmesg --color=always'
alias ls='ls -h --color --group-directories-first'

alias ll='ls -l'
alias l='ll -A'
alias la=l

alias md='mkdir -p'
alias rd=rmdir
function mkcd() {
  mkdir -p $@ && cd ${@:$#}
}

alias r='ranger'
alias e='emacs -nw'

alias c='clear'

alias g='git'
alias gs='git status'
alias gsh='git show'
alias ga='git add'
alias gaa='git add *'
alias gc='git commit'
alias gcm='git commit -m'
alias gcam='git commit --amend'
alias gp='git push'
alias gpo='git push origin'
alias gpp='git pull'
alias gppr='git pull --rebase'
alias gr='git rebase'
alias grc='git rebase --continue'
alias gra='git rebase --abort'
alias gb='git branch'
alias gba='git branch --all'
alias gbd='git branch --delete'
alias gbD='git branch --delete --force'
alias gbr='git branch --remote'
alias gco='git checkout'
alias gcb='git checkout -b'
alias gcB='git checkout -B'
alias gwt='git worktree'
alias gwta='git worktree add'
alias gwtl='git worktree list'
alias gwtr='git worktree remove'
alias gl='git log'
alias gf='git fetch'
alias gfa='git fetch --all'
alias gbs='git bisect'
alias gbsb='git bisect bad'
alias gbsg='git bisect good'
alias gbsn='git bisect new'
alias gbso='git bisect old'
alias gbsr='git bisect reset'
alias gbss='git bisect start'
alias gd='git diff'
alias gcf='git config --list'
alias gdct='git describe --tags $(git rev-list --tags --max-count=1)'
alias gwch='git whatchanged -p --abbrev-commit --pretty=medium'


alias nipl='npm install --package-lock-only'

alias sc='systemctl'
alias scs='systemctl start'
alias scr='systemctl restart'
alias sce='systemctl stop'
alias scu='systemctl --user'
alias jc='journalctl'

alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'

alias ports='netstat -tulanp'

alias rmf='rm -rf'

# stupid but required
alias sudo='sudo '

export MY_CONFIG_HOME="$HOME/.config"
export MY_CACHE_HOME="$HOME/.cache"
export MY_DATA_HOME="$HOME/.local/share"
export MY_STATE_HOME="$HOME/.local/state"

export NVM_DIR="$MY_DATA_HOME"/nvm
source /usr/share/nvm/init-nvm.sh

export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

# dotfiles fixes
export CARGO_HOME="$MY_DATA_HOME"/cargo
export GOPATH="$MY_DATA_HOME"/go
export KDEHOME="$MY_CONFIG_HOME"/kde
export NUGET_PACKAGES="$XDG_CACHE_HOME"/NuGetPackages
export GDBHISTFILE="$MY_DATA_HOME"/gdb/history
export DOCKER_CONFIG="$MY_CONFIG_HOME"/docker
export ELM_HOME="$MY_CONFIG_HOME"/elm
export FFMPEG_DATADIR="$MY_CONFIG_HOME"/ffmpeg
export GRADLE_USER_HOME="$MY_DATA_HOME"/gradle
export GTK_RC_FILES="$MY_CONFIG_HOME"/gtk-1.0/gtkrc
export GTK2_RC_FILES="$MY_CONFIG_HOME"/gtk-2.0/gtkrc
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$MY_CONFIG_HOME"/java
export NODE_REPL_HISTORY="$MY_DATA_HOME"/node_repl_history
export PYENV_ROOT="$MY_DATA_HOME"/pyenv
export RUSTUP_HOME="$MY_DATA_HOME"/rustup
export WORKON_HOME="$MY_DATA_HOME"/virtualenvs


export CAPACITOR_ANDROID_STUDIO_PATH=/opt/android-studio/bin/studio.sh
export ANDROID_HOME=~/Android/Sdk
export ANDROID_SDK_ROOT=~/Android/Sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/tools
export PATH=$PATH:$ANDROID_SDK_ROOT/tools/bin           # avdmanager, sdkmanager
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools      # adb, logcat
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator            # emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/build-tools         # apksigner, zipalign

# surely this works
export DOTNET_CLI_TELEMETRY_OPTOUT=1

export FZF_DEFAULT_COMMAND="fd . $HOME"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd -t d . $HOME"

alias nvc='cd ~/.config/nvim/; nvim .'

alias nnvim='~/.local/share/bob/nightly/nvim-linux64/bin/nvim'
alias snvim='~/.local/share/bob/v0.10.0/nvim-linux64/bin/nvim'

function gi() {
  curl -sL https://www.toptal.com/developers/gitignore/api/$@;
}

function tt() {
  base="/tmp/test"
  i=1
  while [ -d "$base$i" ]; do
    ((i++))
  done
  mkdir -p "$base$i" && cd "$base$i"
}

alias tt=tt

eval $(thefuck --alias)

