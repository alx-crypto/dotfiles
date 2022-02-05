#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

#Display ISO version and distribution information in short
alias version="sed -n 1p /etc/os-release && sed -n 11p /etc/os-release && sed -n 12p /etc/os-release"

#Pacman Shortcuts
alias sync="sudo pacman -Syyy"
alias install="sudo pacman -S"
alias update="sudo pacman -Syyu"
alias search="sudo pacman -Ss"
alias search-local="sudo pacman -Qs"
alias pkg-info="sudo pacman -Qi"
alias local-install="sudo pacman -U"
alias clr-cache="sudo pacman -Scc"
alias unlock="sudo rm /var/lib/pacman/db.lck"
alias remove="sudo pacman -R"
alias autoremove="sudo pacman -Rns"

#Terminel startup commands
bash ~/Documents/Scripts/automove.sh
clear
neofetch

PS1='\[\e[0;96m\]\u\[\e[0;96m\]@\[\e[0;96m\]\H \[\e[0;91m\]<\[\e[0;91m\]Git:\[\e[0;91m\]$(git branch 2>/dev/null | grep '"'"'^*'"'"' | colrm 1 2)\[\e[0;91m\]> \[\e[0;91m\][\[\e[0;91m\]\w\[\e[0;91m\]]\[\e[0;96m\]\$\[\e[0;96m\]: \[\e[0m\]'

#custom scripts
alias cneofetch='bash ~/Documents/Scripts/cneofetch.sh'
alias cpneofetch='bash ~/Documents/Scripts/cpneofetch.sh'
alias lock='bash ~/.config/qtile/i3lock.sh'
alias xb100='xbacklight -set 100'
alias xb80='xbacklight -set 80'
alias xb70='xbacklight -set 70'
alias xb60='xbacklight -set 60'
alias xb50='xbacklight -set 50'
alias grubc='sudo grub-mkconfig -o /boot/grub/grub.cfg'


# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION
