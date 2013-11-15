#!/bin/sh

# install homebrew
ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"

# tap the php formulas
brew tap homebrew/dupes
brew tap josegonzalez/homebrew-php

# install the formulas
KEGS=`curl -L https://raw.github.com/mclee/mac_setup/master/kegs`
for KEG in $KEGS; do
	brew install $KEG
done

brew install vim --with-ruby --with-python --with-lua

# install dotfiles
curl -L https://raw.github.com/mclee/dotfiles/master/install.sh | sh

# install vim
curl -L http://raw.github.com/mclee/vim-vundle/master/install.sh | sh

# install growl replacement
wget https://github.com/mclee/mac_setup/raw/master/growlnotify.rb -O /usr/local/bin/growlnotify.rb
