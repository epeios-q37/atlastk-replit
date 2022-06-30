FLAVOR="java"
[ ! -d atlas-$FLAVOR ] && git clone http://github.com/epeios-q37/atlas-$FLAVOR

RESULT=$(zenity --list --height=380 --title="${FLAVOR^}" --text="Choose demonstration" --column="Name"\
	"Blank"\
	"Hello"\
	"Chatroom"\
	"Notes"\
	"TodoMVC") && cd atlas-java/examples/$RESULT && java -cp .:../../Atlas.jar $RESULT
