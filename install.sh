#!/bin/sh

# install homebrew
ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"

# install the formulas
KEGS=`curl -L https://raw.github.com/mclee/mac_setup/master/kegs`
for KEG in $KEGS; do
	brew install $KEG
done

# install dotfiles
curl -L https://raw.github.com/mclee/dotfiles/master/install.sh | sh

# install vim
curl -L http://raw.github.com/mclee/vim-vundle/master/install.sh | sh