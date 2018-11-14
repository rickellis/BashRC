# -----------------------------------------------------------------------------

# Remove .DS_Store files. Useful if you share drives with Mac.
function rmdsstore() {
    find . -name ".DS_Store" -print0 | xargs -0 rm -rf
    find . -name "._*" -print0 | xargs -0 rm -rf
}

# -----------------------------------------------------------------------------

# DirtyBird
function dirtybird() {
    if [ -z "$1" ]; then
        local path="${HOME}/Archive/CodeLab"
    else
        local path="$@"
    fi
    ${HOME}/Archive/CodeLab/Shell-Scripts/dirtybird.sh "$path"
}

# CleanBird
function cleanbird() {
    if [ -z "$1" ]; then
        local path="${HOME}/Archive/CodeLab"
    else
        local path="$@"
    fi
    ${HOME}/Archive/CodeLab/Shell-Scripts/cleanbird.sh "$path"
}

# -----------------------------------------------------------------------------

# Apache start
function apachestart(){
    sudo apachectl start
    httpd -v
}

# Apache stop
function apachestop(){
    sudo apachectl stop
}

# Apache restart
function apacherestart(){
    sudo apachectl restart
}

# Apache restart
function apachestatus(){
    systemctl status httpd
}

# -----------------------------------------------------------------------------

# Adds, commits, and pushes to git with one command.
function gitgo() {
    # Are we in a directory under source control?
    if [[ ! -d .git ]]; then
        echo "Not a git repository."
    else
        echo "You are in ${PWD}"
        # Are there any changes that need to be committed?
        if git diff-index --quiet HEAD --; then
            echo "Repository is up to date."
        else                
            # Prompt user for commit message
            echo "Enter commit message:"
            read _msg

            # Was a commit message passed?
            if [[ ! "$_msg" ]]; then
                echo "You must include a commit message."
            else
                git add .
                git commit -m "$_msg"
                git push
            fi
        fi
    fi
}

# -----------------------------------------------------------------------------

# Auto-extract based on type
function extract() {
  if [ -f $1 ] ; then
      case $1 in
          *.tar.bz2)    tar xvjf $1     ;;
          *.tar.gz)     tar xvzf $1     ;;
          *.tar.xz)     tar xvfJ $1     ;;
          *.bz2)        bunzip2 $1      ;;
          *.rar)        rar x $1        ;;
          *.gz)         gunzip $1       ;;
          *.tar)        tar xvf $1      ;;
          *.tbz2)       tar xvjf $1     ;;
          *.tgz)        tar xvzf $1     ;;
          *.zip)        unzip $1        ;;
          *.Z)          uncompress $1   ;;
          *.7z)         7z x $1         ;;
          *)            echo "Unrecognized archive $1" ;;
      esac
  else
      echo "$1 is not an extractable file"
  fi
}

# -----------------------------------------------------------------------------

# Creates an archive (*.tar.gz) from given directory.
function maketar() { 
    tar cvzf "${1%%/}.tar.gz" "${1%%/}/";
}

# -----------------------------------------------------------------------------

# Create a ZIP archive of a file or folder.
function makezip() { 
    zip -r "${1%%/}.zip" "$1";
}
