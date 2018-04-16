#     _             _           
#    | |__  __ _ __| |_  _ _ __ 
#   _| '_ \/ _` (_-< ' \| '_/ _|
#  (_)_.__/\__,_/__/_||_|_| \__|
#

# If not running interactively exit
[[ $- != *i* ]] && return

# Location of my Bash files
BASEDIR="${HOME}/CodeLab/BashRC"


# Define file includes
BASHINCS=(".bash_aliases" ".bash_exports" ".bash_functions" ".bash_linux" ".bash_options" ".bash_mac")

# Load the file includes if they exist
for file in ${BASHINCS[@]}; do
	[ -f $BASEDIR/$file ] && source $BASEDIR/$file;
done
unset file

# SET A CUSTOM PROMPT
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
# COLORS
#
#   \[\e[90m\]      = grey for brackets []
#   \[\e[01;36m\]   = cyan for \w path and $ prompt
#   \[\e[0m\]       = reset colors
#
PS1='\[\e[90m\][\[\e[0m\]\[\e[01;36m\]\w\[\e[0m\]\[\e[90m\]]\[\e[0m\]\[\e[01;36m\]\$\[\e[0m\] '