FLAVOR="node"
[ ! -d atlas-$FLAVOR ] && git clone http://github.com/epeios-q37/atlas-$FLAVOR && npm install atlastk

RESULT=$(zenity --list --height=380 --title="Node.js" --text="Choose demonstration" --column="Name"\
	"Blank"\
	"Hello"\
	"Chatroom"\
	"Notes"\
	"TodoMVC"\
	"15-puzzle") && node atlas-node/examples/$RESULT/main.js
