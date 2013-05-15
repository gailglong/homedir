# Set up our PS1 strings
if [[ "${DISPLAY%%:0*}" != "" ]]; then  
    export PS1="\[\e]2;\u@\H \w\a\e[34;1m\][\u@\h]\$\[\e[0m\] "
else
    export PS1="\[\e]2;\u@\H \w\a\e[33;1m\][\u@\h]\$\[\e[0m\] "
fi

# Yes, I got it in .profile but I want to be sure!
if [[ -f ~/.aliases ]]
then
    source ~/.aliases
fi

# this makes sure that sh goes where I want it to
# and that I get my vim bindings
alias sh='/bin/bash'
set -o vi

PATH=$PATH:/home/gail/dev/jdk1.7.0_11/bin
export PATH
export XENVIRONMENT="$HOME/.Xdefaults"
export HISTCONTROL=ignoredups

export JAVA_HOME=/home/ggl/bin/jdk1.7.0_11

EDITOR=vim
export EDITOR

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
bind '"\C-l": clear-screen'

export TERM=xterm-256color
if [ "$TERM" != "dumb" ]; then
    [ -e "$HOME/.dircolors" ] && DIR_COLORS="$HOME/.dircolors"
    [ -e "$DIR_COLORS" ] || DIR_COLORS=""
    eval "`dircolors -b $DIR_COLORS`"
    alias ls='ls --color=auto'
    alias dir='ls --color=auto --format=vertical'
    alias vdir='ls --color=auto --format=long'
fi

#functions

h2d(){
  mac=$(echo $1 |  tr '[:lower:]' '[:upper:]')
  echo "ibase=16; ${mac}"|bc
}
d2h(){
  mac=$(echo $1 |  tr '[:lower:]' '[:upper:]')
  echo "obase=16; ${mac}"|bc
}

h2dall(){
    for ii in $*
    do
        h=$(echo $ii | tr '[:lower:]' '[:upper:]')
        h2d $h
    done
}

d2hall(){
    for ii in $*
    do
        h=$(echo $ii | tr '[:lower:]' '[:upper:]')
        d2h $h
    done
}

dhall(){
    for ii in $*
    do
		printf "%012X " $ii
    done
	echo
}

hdall(){
    for ii in $*
    do
        h='0x'$(echo $ii | tr '[:lower:]' '[:upper:]')
		printf "%d "  $h
    done
	echo
}

function xt()      # Adds some text in the terminal frame.
{
    case "$TERM" in
        *term | rxvt | xterm-256color | xterm)
            echo -n -e "\033]0;$*\007" ;;
        *)  
            ;;
    esac
}

