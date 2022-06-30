FLAVOR="python"
[ ! -d atlas-$FLAVOR ] && git clone http://github.com/epeios-q37/atlas-$FLAVOR

RESULT=$(zenity --list --height=380 --title="${FLAVOR^}" --text="Choose demonstration" --column="Name"\
	"Blank"\
	"Hello"\
	"Chatroom"\
	"Notes"\
	"TodoMVC"\
	"Hangman"\
	"15-puzzle"\
	"Contacts"\
	"Widgets"\
	"Chatrooms"\
	"PigGame"\
	"Reversi") && python atlas-python/examples/$RESULT/
