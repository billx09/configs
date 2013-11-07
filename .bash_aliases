# alias gvim='gvim --remote-tab'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --expire-time=2000 --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias clean='find . -type f -name "*~" | xargs rm -f; find . -type f -name "*.log" | xargs rm -f; find . -type f -name "*.bak" | xargs rm -f; find . -type f -name "#*" | xargs rm -f; find . -type f -name ".#*" | xargs rm -f'
alias cdgrx='cd /opt/grx/HRP2LAAS/bin'

alias filterhppoutput="sed -E 's/([A-Z]+):\/local\/jmirabel\/devel\/ros\/robotpkg\/path\/(hpp-[a-z-]+)\/[^:]+:/\1:\2:/'"
alias genhppctags='ctags --c++-kinds=+p --language-force=c++ -R -h ".cc.hh" include/ src/'
