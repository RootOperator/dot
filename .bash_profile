#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')" # add !/.local/bin and all subdirectories to $PATH
export EDITOR="vim"
export BROWSER="firefox"
export TERMINAL="st"
