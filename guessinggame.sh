#!/usr/bin/env bash
# File: guessinggame.sh

function countfiles {
    cant=$(ls | wc -l)
}

countfiles

echo "How many files are in the current directory?"
echo "Try to guess, enter your answer:"
read response

while [[ $cant != $response ]]
do
    if [[ $cant < $response ]]
    then
        echo "Your guess is too high. Try again:"
        read response
    elif [[ $cant > $response ]]
    then
        echo "Your guess is too low. Try again:"
        read response
    fi
done

echo "Congratulations! Your answer is correct."
