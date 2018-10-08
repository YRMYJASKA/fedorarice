#!/bin/sh
# Gather the files from all the locations
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

cp ~/.config/i3/config $DIR/config_i3
cp ~/.newsboat/config $DIR/.newsboat/config
cp ~/.newsboat/urls $DIR/.newsboat/urls
cp ~/.vimrc $DIR/.vimrc
cp ~/.zshrc $DIR/.zshrc

cp -r ~/Templates $DIR
