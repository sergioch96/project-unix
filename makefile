README.md: guessinggame.sh
	echo "#Project UNIX" > README.md
	date +%c >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
