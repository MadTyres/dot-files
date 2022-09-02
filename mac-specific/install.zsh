#! /bin/zsh

cd "$(dirname "$0")"

SCRIPT_NAME=$0

for file in $(find $(pwd) -mindepth 1 -maxdepth 1 -exec basename {} \;)
  do  
    if [[ $file != $SCRIPT_NAME ]]
    then
        echo "Creating at"
        echo "$HOME/.config/${file}"
        echo "to"
        echo "$(pwd)/$file"
        ln -s "$(pwd)/$file" "$HOME/.config/${file}"
    fi
  done

