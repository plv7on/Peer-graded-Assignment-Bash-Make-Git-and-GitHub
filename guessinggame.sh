#!/usr/bin/env bash

function count_files {
    ls -1 | wc -l
}

correct_count=$(count_files)

while true; do
    echo "How many files are in the current directory? Guess:"
    read user_guess

    if [[ $user_guess -lt $correct_count ]]; then
        echo "Too low! Try again."
    elif [[ $user_guess -gt $correct_count ]]; then
        echo "Too high! Try again."
    else
        echo "Congratulations! You guessed the correct number of files."
        break
    fi
done