#!/bin/bash

chr() {
  [ "$1" -lt 256 ] || return 1
  printf "\\$(printf '%03o' "$1")"
}

ord() {
  LC_CTYPE=C printf '%d' "'$1"
}

LANGS=(Java Node.js Perl Python Ruby)
FLAVORS=(java node perl python ruby)

LANGS_AMOUNT=${#LANGS[@]}

CONT=true

while [ "$CONT" == "true" ]
do

  echo -e "\nAVAILABLE LANGUAGES:\n"
  
  for i in "${!LANGS[@]}"
  do
#    printf "%s: %s\n" "$(chr $((97 + $i )))" "${LANGS[$i]}"  
    printf "%s: %s\n" "$((1 + $i ))" "${LANGS[$i]}"  
  done
  
#  echo -n -e "\nChoose a language ('a'…'$(chr $((96 + $LANGS_AMOUNT)))'): "
  echo -n -e "\nChoose a language ('1'…'$LANGS_AMOUNT'): "
  
  read CHOICE
  
#  FLAVOR=${FLAVORS[$(($(ord $CHOICE) - 97))]}
#  LANGUAGE=${LANGS[$(($(ord $CHOICE) - 97))]}

  FLAVOR=${FLAVORS[$(($CHOICE - 1))]}
  LANGUAGE=${LANGS[$(($CHOICE - 1))]}
 
  
  REPO=atlas-$FLAVOR
  REPO_URL="http://github.com/epeios-q37/$REPO"
  
  export GIT_TERMINAL_PROMPT=0

  [ -d $REPO ] || ( git ls-remote -h $REPO_URL HEAD &> /dev/null && git clone $REPO_URL ) 

  [ -d $REPO ] && echo -e "\nAVAILABLE DEMONSTRATIONS FOR $LANGUAGE:" && cd $REPO && CONT=false && ATK=none bash replit.sh

done
