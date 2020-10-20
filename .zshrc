# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path exports
export PATH=$PATH:/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin

plugins=(
git
)

# User configuration
export MANPATH="/usr/local/man:$MANPATH"

# Git branch autocomplete
fpath=(~/.zsh $fpath)

# Git Commands
alias g='git'

# Bindings

## arrow up
bindkey "\e[A" history-search-backward
## arrow down
bindkey "\e[B" history-search-forward

# Finds a file. Usage `f fileName`
function f() { find . -iname "*$1*" ${@:2} }

# Greps for a string in a file. Usage `r someString`
function r() { grep "$1" ${@:2} -R . }

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
