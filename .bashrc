# If not running interactively exit
[[ $- != *i* ]] && return

# Define file includes
bashincs=(".bash_aliases" ".bash_exports" ".bash_functions" ".bash_linux" ".bash_options" ".bash_mac")

# Load the file includes if they exist
for file in ${bashincs[@]}; do
	[[ -f "/home/rickellis/${file}" ]] && source "/home/rickellis/${file}";
done
unset file

# Set a custom prompt
#
#  \t - time
#  \d - date
#  \n - newline
#  \s - Shell name
#  \W - The current working directory
#  \w - The full path of the current working directory.
#  \u - The user name
#  \h - Hostname
#  \# - The command number of this command.
#  \! - The history number of the current command
#
# PS1='[\w]\$ '

PS1='\[\e[00;33m\][\[\e[0m\]\[\e[01;36m\]\w\[\e[0m\]\[\e[00;33m\]]\[\e[0m\]\[\e[01;36m\]\$\[\e[0m\] '