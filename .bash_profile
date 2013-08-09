if [[ -f ~/.bashrc ]]
then
    source ~/.bashrc
fi

# Get our command aliases going
if [[ -f ~/.aliases ]]
then
    source ~/.aliases
fi

# Set command line movement to vim bindings
set -o vi

# Make sure that our home bin is in the path
PATH=$PATH:~/bin:

# Set our default display varialbe
export DISPLAY=:0.0
export HISTFILESIZE=10000

# Make sure we get our x settings.  Xdefaults is
# a soft link to .Xresources.
declare -f xrdb && xrdb -merge ~/.Xdefaults

#functions

h2d(){
  echo "ibase=16; $@"|bc
}
d2h(){
  echo "obase=16; $@"|bc
}

h2dall(){
    for ii in $*
    do
        h=$(echo $ii | tr '[:lower:]' '[:upper:]')
        h2d $h
    done
}

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
