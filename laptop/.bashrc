#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias flaf="flameshot full -c"
alias flar="flameshot gui"


shopt -s autocd

alias py='python3'
alias ins='sudo apt-get install'
alias rem='sudo apt-get remove'
alias mygit='https://github/Yyr3LL'
alias gopr='cd ~/django-blog'
alias gotd='cd ~/Downloads/Telegram\ Desktop'
alias godl='cd ~/Downloads'
alias goms='cd ~/megasync'
alias v='vim'
alias sv='sudo vim'
alias ve='vim -c Nd'
alias r='ranger'
alias sr='sudo ranger'
alias p='sudo pacman -S'
#alias poly1='killall -q polybar'
#alias poly2='./.config/polybar/launch_polybar.sh'
alias poly1='killall -q polybar'
alias poly2='./.config/polybar/launch.sh'
alias i3cf='vim .config/i3/config'
alias pcf='vim .config/polybar/config'
alias alacf='vim .config/alacritty/alacritty.yml'
alias fs-s='flameshot gui'
alias fs-f='flameshot full'
alias em="printf 'tarasenko.yura.dr@gmail.com\n'"
alias gh="printf 'https://github.com/Yyr3LL/\n'"
alias tcf="vim /home/yy/.Xresources"
alias vrc="vim /home/yy/.vimrc"
alias brc="vim /home/yy/.bashrc"

alias pg="pass -c google.com/username"

PS1='\[\033[01;36m\]\u\[\033[01;37m\]@\h \[\033[01;34m\]\w\n\[\033[01;30m\]> \[\033[01;36m\]$ \[\033[01;37m\]'

# better yaourt colors
#export YAOURT_COLORS="nb=1:pkg=1:ver=1;32:lver=1;45:installed=1;42:grp=1;34:od=1;41;5:votes=1;44:dsc=0:other=1;35"
#export TERM="screen-256color"
export EDITOR=vim
