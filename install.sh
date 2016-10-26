
function header()   { echo -e "\n\033[1m$@\033[0m"; }
function success()  { echo -e " \033[1;32m==>\033[0m  $@"; }
function error()    { echo -e " \033[1;31mX\033[0m  $@"; }
function arrow()    { echo -e " \033[1;34m==>\033[0m  $@"; }
function warning()  { echo -e " \033[0;93m==>\033[0m  $@"; }

# local install 
BIN="$HOME/bin"
PROG_NAME="d2E"

#control dest folder
if test -d $BIN
then 
	success "$BIN folder found!"
else
	error "$BIN folder not found.. Nowhere to install the program"
	exit 1
fi

#control for existing program 
if test -x $BIN/$PROG_NAME 
then 
	warning "The program is already there, overwriting it ..."
	rm -f $BIN/$PROG_NAME
fi

#innstall it
cp $PROG_NAME $BIN/$PROG_NAME


