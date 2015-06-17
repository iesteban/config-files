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

autoload -Uz compinit compinit
setopt auto_cd
# End of lines added by compinstall

#PROMPT='%h %m@:%~%# '
#RPROMPT="%t-$?"

autoload -U colors && colors

PROMPT="tty%l %{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m:%{$fg_no_bold[yellow]%}%~%{$reset_color%}%# "
RPROMPT="[%{$fg_no_bold[yellow]%}%?%{$reset_color%}]"


alias ls="ls --color"
alias ssh="ssh -A"
alias fuck='sudo $(history -p \!\!)' 
alias tunel='ssh -N -L localhost:3333:celery1:5555 root@admin1'
alias tunel_sql='ssh -N -L localhost:33333:db52.cngx5leiezpa.eu-west-1.rds.amazonaws.com:5432 root@admin1'
alias tunel_rabbit='ssh -N -L localhost:3333:10.0.0.185:15672 root@admin1'
alias tunel_flower='ssh -N -L localhost:3334:10.0.0.42:5555 root@admin1'
alias tags='ctags -R .'

bindkey "^[[A" history-search-backward

bindkey "^[[B" history-search-forward
bindkey -e
