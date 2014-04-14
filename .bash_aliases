# alias gvim='gvim --remote-tab'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --expire-time=2000 --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias clean='find . -type f -name "*~" | xargs rm -f; find . -type f -name "*.log" | xargs rm -f; find . -type f -name "*.bak" | xargs rm -f; find . -type f -name "#*" | xargs rm -f; find . -type f -name ".#*" | xargs rm -f'
alias cdgrx='cd /opt/grx/HRP2LAAS/bin'


function cdp() {
	dir="$HOME/.cd/$1"
  if [ -d "$dir" ]; then
    cd -P "$dir"
  else
	  echo "$dir : No such file or directory"
		exit 1
	fi
}
function addprefdir() {
  PWD=$(pwd)
  if [ "$#" -gt 0 ]; then
    if [ -d "${PWD}/$1" ]; then
      DIR="${PWD}/$1"
    elif [ -d "$1" ]; then
      DIR="$1"
    fi
  else
    DIR="${PWD}"
  fi
  echo $DIR
  if [ -d "${DIR}" ]; then
    NAME="$(basename ${DIR})"
    ln -s "${DIR}" "$HOME/.cd/"
  else
    echo "$1 : Not a directory"
  fi
}

alias filterhppoutput="sed -E 's/([A-Z]+):(\/[^\/]+)+\/([kh]pp[-/][a-z-]+)\/[^:]+:([0-9]+:)?/\1:\3:/'"
alias genhppctags='ctags --c++-kinds=+p --language-force=c++ -R -h ".cc.hh" include/ src/'
alias gname='guake --selected-tab --rename-tab="$(basename `pwd`)" > /dev/null'

alias vncserver-vgl-netbook="/opt/VirtualGL/bin/vglrun vncserver -geometry 1024x600"
alias vncserver-kill="vncserver -clean -kill :1"

# vimdirrc
alias lnvimdirrc-cpp="ln -s ~/.vim/vimdirrc-cpp .vimdirrc"
alias lnvimdirrc-latex="ln -s ~/.vim/vimdirrc-latex .vimdirrc"
