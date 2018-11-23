export PATH=$HOME/.local/bin:$HOME/bin:/usr/local/bin:$PATH
export ZSH="/home/aneilan/.oh-my-zsh"
ZSH_THEME="sorin"
# DISABLE_AUTO_TITLE="true"
# ENABLE_CORRECTION="true"
# COMPLETION_WAITING_DOTS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="yyyy-mm-dd"
plugins=(git pip command-not-found zsh_reload encode64 fuck fedora httpie extract cp go)

source $ZSH/oh-my-zsh.sh

# User configuration
export NVM_DIR="${XDG_CONFIG_HOME/:-$HOME/.}nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
export LANG=en_US.UTF-8
export CFLAGS="-march=skylake -O2 -g -fdiagnostics-color"
export CXXFLAGS="${CFLAGS}"
alias mirror='wget -r -np -m -e robots=off --timeout=1 --tries=3 --retry-connrefused'
export PATH=/usr/lib64/ccache:$PATH
export PATH=$HOME/go/bin:$PATH
export PATH=$HOME/Android_SDK/platform-tools:$HOME/Android_SDK/build-tools/28.0.3:$HOME/Android_SDK/tools:$HOME/Android_SDK/ndk-bundle:$PATH
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"
load_clang() {
	export CC=clang
	export CXX=clang++
}
load_gcc() {
	export CC=gcc
	export CXX=g++
}

