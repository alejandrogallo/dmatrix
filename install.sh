
# local install 

BIN="$HOME/bin"
PROG_NAME="d2E"

#control dest folder
if test -d $BIN
then 
	echo "$BIN folder found!"
else
	echo "$BIN folder not found.. Nowhere to install the program"
	exit 1
fi

#control for existing program 
if test -x $BIN/$PROG_NAME 
then 
	echo "The program is already there, overwriting it ..."
	rm -f $BIN/$PROG_NAME
fi

#innstall it
cp $PROG_NAME $BIN/$PROG_NAME


