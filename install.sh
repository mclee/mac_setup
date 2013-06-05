#!/bin/sh

# install homebrew

ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"
KEGS=`curl -L https://raw.github.com/mclee/mac_setup/master/kegs`
for KEG in $KEGS; do
	brew install $KEG
done
