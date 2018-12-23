#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias lx='exa -l --group-directories-first --time-style long-iso'

export EXA_COLORS="ur=38;5;nnn:uw=38;5;nnn:ux=1;33:ue=1;33:gr=38;5;nnn:gw=38;5;nnn:gx=1;33:tr=38;5;nnn:tw=38;5;nnn:tx=1;33:su=34:sf=34:xa=34:sn=38;5;nnn;1:sb=38;5;nnn;1:da=38;5;nnn;1:uu=38;5;nnn:un=1;38;5;nnn:gu=38;5;nnn:gn=1;38;5;nnn"

# PS1='[\u@\h \W]\$ '
source /effy/config/bash/ps1.sh
