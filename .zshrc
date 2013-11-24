# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/hakka/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

#PROMPT='%h %m@:%~%# '
#RPROMPT="%t-$?"

autoload -U colors && colors

PROMPT="tty%l %{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m:%{$fg_no_bold[yellow]%}%~%{$reset_color%}%# "
RPROMPT="[%{$fg_no_bold[yellow]%}%?%{$reset_color%}]"
