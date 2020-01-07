while inotifywait -e modify,create,delete,move ~/Downloads --exclude ".last_change"; do
	echo "asdf"
done
