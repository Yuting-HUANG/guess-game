#!/usr/bin/bash
#
# guess.bash - guessing game in BASH (Bourne Again Shell)
#
# This is written to demonstrate this language versus the same program 
# written in other languages.

scorefile="highscores_bash"
guess=-1 
typeset -i num=0

echo -e "guess.bash -  how many files are in the current directory"

### Generate random number
(( answer = 3 ))

### Play game
while (( guess != answer )); do
	num=num+1
	read -p "Enter guess $num: " guess
	if (( guess < answer )); then
		echo "Higher..."
	elif (( guess > answer )); then
		echo "Lower..."
	fi
done
echo -e "Correct! That took $num guesses.\n"
