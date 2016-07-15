# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.TIC-II

#export PGPASSWORD=chuj
#for db in `psql -l -t -q | awk '{if (length($1)>2) print $1}' | grep -v template` ; do alias $db="psql -d $db"; done

export JAVA_HOME=/opt/jdk/jdk1.8.0_25
alias studio="/www/android/android-studio/bin/studio.sh"

alias l="ls -l"
alias ll="ls -al"
alias en1="ssh -p 222 -R 3690:10.0.3.150:3690 root@power2.gammanet.pl"
alias sql2="ssh root@10.216.106.8"
alias sql="ssh root@10.216.106.11"
alias cms="ssh root@10.216.106.3"
#alias promienko="ssh root@piaskowa.promienko.pl"
alias promienko="ssh root@192.168.0.239"

alias highend="ssh root@highend.gammanet.pl"
alias oasis="ssh root@oasis.gammanet.pl"
alias jungle="ssh root@jungle.gammanet.pl -A"
alias apollo="ssh root@apollo.gammanet.pl -A"
alias szafir="ssh root@szafir.gammanet.pl -A"
alias edge="ssh root@edge.gammanet.pl -A"
alias pudel="ssh root@pudel.webkameleon.com -A"

alias ofek="echo Gamm@N3T; ssh root@77.65.5.21"
alias ofekdb="ssh root@77.65.5.22"

alias zenex2="rdesktop -u adminserwint -p qqq -r clipboard:CLIPBOARD 94.40.10.20"
alias zenex="rdesktop -u adminserwsql-II -p ZenMATIC-II  -r clipboard:CLIPBOARD 94.40.10.19"
alias piwnica="rdesktop -u pudel -p spierdalaj  -r clipboard:CLIPBOARD 10.10.20.210"
alias picassa="rdesktop -u pudel -p spierdalaj  -r clipboard:CLIPBOARD -g 1280x900 10.0.3.40"

alias safari="ssh root@safari.gammanet.pl"
alias kier="ssh root@kier.gammanet.pl"
alias epapubeta="mysql -h 173.194.224.182 -u epapu -p epapubeta"
alias kiedymsza="mysql -h 173.194.224.182 -u kiedymsza -p podstawski"

alias ecco="ssh -p 2222 gammanet@92.43.112.53"
alias ecco2="ssh -p 2223 gammanet@193.108.35.70"

alias ecco3="echo 123gammanet\$%^; ssh -p 2222 gammanet@91.198.121.125 "

alias isos="export PGPASSWORD=fj3843; psql -h 172.16.80.3 -d ofekprod -U ofek"
alias jestemprzed="export PGPASSWORD=6rRJfnb8; psql -h 172.16.80.3 -d jprzed -U jprzed"

set EDITOR=/usr/bin/vi

export PATH=$HOME/bin:$PATH

export PHING_HOME=/usr/local/phing

cd "`cat $HOME/rc/.cd.pwd`"
alias cd="$HOME/rc/.cd ; cd"
trap $HOME/rc/.cd.trap 14

alias crystal="rdesktop -u gammanet -p html#OK -r clipboard:CLIPBOARD -g 1280x900 crystal.gammanet.pl"


#a=`ssh-agent`
#eval $a
#ssh-add

git config --global credential.helper 'cache --timeout=7200'
