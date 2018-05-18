#!/usr/bin/env bash

clear
function Introduction {
echo
echo "Hello.....would you like to play a game?"
echo
echo "Try to guess how many files are in the current directory"
echo
}


Introduction

FileNumber=$(ls -1 | wc -l)

until [[ $response -eq $FileNumber ]]; do
	read response
	if [[ $response -gt $FileNumber ]]
	then
		echo "Sorry $response is to high please guess again."
	elif [[ $response -lt $FileNumber ]]
	then
		echo "Sorry $response is to low please guess again"
	fi
done

echo "Congratulations! You guessed correctly!"

