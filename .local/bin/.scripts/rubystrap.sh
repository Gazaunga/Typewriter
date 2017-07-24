#!/bin/bash

# ruby install
cd ~
wget -O ruby-install-0.6.1.tar.gz https://github.com/postmodern/ruby-install/archive/v0.6.1.tar.gz
tar -xzvf ruby-install-0.6.1.tar.gz
cd ruby-install-0.6.1/
sudo make install

# check to see if it isntalled successfully
ruby-install -v

# install ruby/jruby
ruby-install --latest ruby
ruby-install --latest ruby

# Gems
gem install rails -v 5.1.2 --no-rdoc --no-ri
gem install jekyll --no-rdoc --no-ri
gem install thor --no-rdoc --no-ri
gem install bundler --no-rdoc --no-ri
gem install colorize --no-rdoc --no-ri
gem install scriptster --no-rdoc --no-ri
gem install pry --no-rdoc --no-ri
gem install script_executor --no-rdoc --no-ri



# Extras
cd ~
curl https://raw.githubusercontent.com/scopatz/nanorc/master/install.sh | sh
curl -L https://git.io/slim > ~/.zshrc
curl -sLf https://spacevim.org/install.sh | bash
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20for%20Powerline%20Nerd%20Font%20Complete.otf
