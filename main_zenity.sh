#!/bin/bash

# GUI version using zenity. Not used: does not work well with smartphones.

result=$(zenity --list --height=240 --title="Language" --text="Choose language" --column="Language" --column="Shortcut" --hide-column=2 --print-column=2\
    "Java" "java"\
    "Node.js" "node"\
    "Perl" "perl"\
    "Python" "python"\
    "Ruby" "ruby") && bash $result.sh

