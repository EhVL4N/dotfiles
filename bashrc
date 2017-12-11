# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls="ls -hG --color=auto"
alias l="ls -l"
alias la="ls -la"
alias vi="vim"

set -o vi

shopt -s checkwinsize

export _JAVA_AWT_WM_NONREPARENTING=1

GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWCOLORHINTS=1

export PATH=$PATH:$HOME/bin

source ~/.git-prompt.sh

bold=$(tput bold)
normal=$(tput sgr0)

PROMPT_COMMAND='__git_ps1 "\[\033[01;30m\]\u\[\033[00m\]¬\[${bold}\]\W\[${normal}\] " "\[\033[01;30m\]\$ \[\033[00m\]" "(%s) "'
