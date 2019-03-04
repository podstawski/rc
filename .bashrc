
set EDITOR=/usr/bin/vi
export PATH=$HOME/bin:$PATH
export PHING_HOME=/usr/local/phing
export NODE_ENV=piotr

cd "`cat $HOME/rc/.cd.pwd`"
alias cd="$HOME/rc/.cd ; cd"
trap $HOME/rc/.cd.trap 14



#a=`ssh-agent`
#eval $a
#ssh-add

git config --global credential.helper 'cache --timeout=7200'
