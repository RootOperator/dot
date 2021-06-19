#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')" # add ~/.local/bin and all subdirectories to $PATH
export EDITOR="vim"
export BROWSER="firefox"
export TERMINAL="st"

# start graphical server if i3 is not already running
[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x i3 >/dev/null && exec startx
