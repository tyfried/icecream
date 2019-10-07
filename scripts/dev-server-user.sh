#!/bin/bash

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
source ~/.bashrc
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

# https://www.digitalocean.com/community/tutorials/how-to-install-ruby-on-rails-with-rbenv-on-ubuntu-18-04
# https://stackoverflow.com/questions/49674564/package-configuration-for-libxml2-is-not-found

rbenv install 2.6.3
rbenv rehash
rbenv global 2.6.3
echo "gem: --no-document" >> ~/.gemrc
printf "install: --no-rdoc --no-ri\nupdate:  --no-rdoc --no-ri\n" >> ~/.gemrc
gem install rails -v 5.1.6
rails _5.1.6_ new ice_cream
