 
 alias psg='ps aux | grep'
 alias hig='history | grep'
 alias c='clear'
 alias vpn-office='sudo /usr/local/Cellar/openvpn/2.4.6/sbin/openvpn $VPNPATH/VPN/artem.arzamasov.ovpn'
 alias vpn-ccaoa='nohup sudo /usr/local/Cellar/openvpn/2.4.6/sbin/openvpn ~/Documents/ClearScale/VPN/ccaoa-dev.ovpn'
 alias vpn-revinate='nohup sudo /usr/local/Cellar/openvpn/2.4.6/sbin/openvpn ~/Documents/ClearScale/VPN/ReVinate.ovpn'
 alias vpn-revinate2='nohup sudo /usr/local/Cellar/openvpn/2.4.6/sbin/openvpn ~/Documents/ClearScale/VPN/ReVinate2.ovpn'
 alias vpn-f50-stage='nohup sudo $OPENVPN $VPNPATH/clients/f50/vpn/f50-stage.ovpn &'
 alias vpn-f50-prod='nohup sudo $OPENVPN $VPNPATH/clients/f50/vpn/f50-prod.ovpn &'
 alias vpn-f50-dev='nohup sudo $OPENVPN $VPNPATH/clients/f50/vpn/f50-dev.ovpn &'
 alias ehosts='sudo vim /etc/hosts'

## git aliases
 alias gs='git status'
 alias gp='git pull'
 alias gph='git push'
 alias ga='git add'
 alias grm='git rm'
 alias glo='git log --oneline'

alias c='clear'
alias hig='history | grep'
alias psg='ps aux | grep'
alias l='ls -CF'
alias cd..='cd ..'
alias cdr="cd ~/repo"
alias ...='cd ../..'
alias ssh='ssh -2'
alias pa='ps aux'
alias pag='ps aux | grep -i'
alias vi='vim -c ":cd %:p:h"'
#alias mc='mc -bs'
alias man='PAGER=less man -a'
alias cdc='cd ~; clear'
alias d='dirs -v'
alias p='pwd'
alias h=history
alias hg='history | grep'
alias grep=egrep
unameOut="$(uname -s)"
if [ $unameOut != 'Darwin' ] 
then
    alias ls='ls --color=auto'
    alias ll='ls -lh --color=auto'
    alias la='ls -a --color=auto'
    alias ai='sudo apt-get install'
    alias as='apt-cache search'
    alias au='sudo apt-get update'
    alias ag='sudo apt-get upgrade'
else
    ##alias ls='ls'
    ##alias ll='ls -lh'
    ##alias la='ls -a'
fi

alias lm='ls -al |more'
alias tree='tree -Csu'
alias xs='cd'
alias vf='cd'
alias moer='more'
alias moew='more'
alias kk='ll'

# links that point to directories
alias lsd='ls -ld *(-/DN)'
# List only file beginning with "."
alias lsa='ls -ld .*'
# web cat
alias wcat='wget -q -O -'
alias dog=wcat

alias ehosts='sudo vim /etc/hosts'