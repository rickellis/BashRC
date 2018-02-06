#
# ~/.bash_aliases
#
# This file gets included by .bashrc
#

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Navigation shortcuts
alias home="cd ~/; ls"
alias root="cd /; ls"

# Local folder shortcuts
alias dsk="cd ~/Desktop; ls"
alias dev="cd ~/Development; ls"
alias dcs="cd ~/Documents; ls"
alias dwn="cd ~/Downloads; ls"
alias drp="cd ~/Dropbox; ls"

# Quickly jump to parent directores
alias .='cd ..'
alias ..='cd ../..'
alias ...='cd ../../..'

# Change directories and list contents
alias cl="cd $1; ls -A"

# Quickies
alias c='clear'
alias p='pwd'
alias x='exit'

# Colorize
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# List
alias l='ls'
alias la='ls -A'
alias ll='ls -lA'

# List only directories
alias lsd="ls -lF"

# Show only dotfiles
alias l.="ls -A | egrep '^\.'"

# List the commands you use most often
alias freq='cut -f1 -d" " ~/.bash_history | sort | uniq -c | sort -nr | head -n 30'

# List top ten largest files or directories in current directory
alias lga='du -ah . | sort -rh | head -40'

# List top ten largest files in current directory
alias lgf='ls -1Rhs | sed -e "s/^ *//" | grep "^[0-9]" | sort -hr | head -n40'

# mkdir with flags: -p = make parents as needed, -v = verbose
alias mkdir='mkdir -p -v' 

# Ping 5 times by default
alias ping='ping -c 5'

# Show disk space
alias df='df -h'

# Running processes
alias ps="ps auxf"

# Show bin paths
alias paths='echo -e ${PATH//:/\\n}'

# Search for a specific proces. Ex: psg conky
alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"

# Userlist
alias userlist="cut -d: -f1 /etc/passwd"

# Show local weather
alias weather="curl http://wttr.in/"

# Get week number
alias week='date +%V'

# Alias more to less so we can use arrow keys for navigation
alias more='less'

# Shows the dimensions of the current terminal
# For more info on tput: http://linuxcommand.org/lc3_adv_tput.php
alias termsize='echo "Rows=$(tput lines) Cols=$(tput cols)"'
