#!/bin/bash

result=$(zenity --list --height=240 --title="Languge" --text="Choose language" --column="Language" --column="Shortcut" --hide-column=2 --print-column=2\
    "Java" "java"\
    "Node.js" "node"\
    "Perl" "perl"\
    "Python" "python"\
    "Ruby" "ruby") && bash $result.sh
