# The following lines were added by compinstall
zstyle :compinstall filename '/home/roy/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=10000
setopt extendedglob nomatch notify
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install

# Alias
## ls
alias ls='ls --color=auto -h'
alias la='ls -A'
alias ll='ls -l'
alias lal='la -l'
alias lla='ll -a'

## exit
alias q='exit'

## grep
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

## less
# alias less='less -R'
export LESS='-R'
export PAGER='less'

## Human Readable
alias df='df -h'
alias du='du -h'
alias free='free -h'

alias cf='fortune -sa|cowsay -W68'

# Bindkeys
if [[ "$TERM" =~ '^rxvt' ]]; then
    ## Del
    bindkey "\e[3~" delete-char
    ## Home
    bindkey "\e[7~" beginning-of-line
    ## End
    bindkey "\e[8~" end-of-line
    TITLE=$'\e]2;[%~] - urxvt zsh\a'
elif [[ "$TERM" =~ '^xterm' ]]; then
    ## Del
    bindkey "\e[3~" delete-char
    ## Home
    bindkey "\e[H" beginning-of-line
    ## End
    bindkey "\e[F" end-of-line
    TITLE=$'\e]2;[%~] - xterm zsh\a'
else
    ## Del
    bindkey "\e[3~" delete-char
    ## Home
    bindkey "\e[1~" beginning-of-line
    ## End
    bindkey "\e[4~" end-of-line
    TITLE=''
fi
# Modules
zmodload zsh/mathfunc
zmodload zsh/mapfile

# Functions
rez() {
    # Refresh zsh
    exec zsh -i
}

# colored man
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;34m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[03;32m'

# PS
PS1="[%n@%B%~%b]$TITLE
%F{4}%B%(!.#.$)%b%f "
RPS1="[%(0?.%F{2}0%f.%B%F{3}%?%f%b)]"
path+="/home/roy/.gem/ruby/2.0.0/bin"
