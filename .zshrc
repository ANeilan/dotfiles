export TERM="xterm-256color" 
POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k 
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir rvm vcs) 
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time)
#POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="↱"
#POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="↳ "
#POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=0
POWERLEVEL9K_TIME_FORMAT="%D{%I:%M %p}"
POWERLEVEL9K_DISABLE_RPROMPT=true
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
POWERLEVEL9K_MODE="nerdfont-complete"
export PATH=$HOME/.local/bin:$HOME/bin:/usr/local/bin:$PATH
source $HOME/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle pip
antigen bundle command-not-found
antigen bundle zsh_reload
antigen bundle encode64
if [ -e /etc/fedora-release ]; then
    antigen bundle fedora
elif grep -q ubuntu "/etc/os-release"; then
    antigen bundle ubuntu
fi
antigen bundle httpie
antigen bundle extract
antigen bundle cp
antigen bundle go

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# LukeChilds' zsh-nvm
antigen bundle lukechilds/zsh-nvm

# Tarrasch's zsh-optimized autoenv
antigen bundle Tarrasch/zsh-autoenv

# Load the theme.
antigen theme bhilburn/powerlevel9k powerlevel9k

# Tell Antigen that you're done.
antigen apply

export CFLAGS="-march=skylake -O2 -g -fdiagnostics-color"
export CXXFLAGS="${CFLAGS}"
alias mirror='wget -r -np -m -e robots=off --timeout=1 --tries=3 --retry-connrefused'
export PATH=/usr/lib64/ccache:$PATH
export PATH=$HOME/go/bin:$PATH
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
