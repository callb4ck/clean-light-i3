# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh-histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/sec/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

[ "$(whoami)" != "root" ] && ufetch

alias vim="nvim"
alias vi="nvim"


PROMPT="%B%F{blue}%n%F{magenta}@%F{blue}%M: %F{cyan}%~"$'\n'"%B%F{green}%#:%b%f "

RPROMPT="%B%F{cyan}[%?]"

alias ls="ls --color"

bindkey ';5D' backward-word
bindkey ';5C' forward-word
