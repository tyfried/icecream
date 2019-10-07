#!/bin/bash

sudo apt-get update
sudo apt install -y autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm5 libgdbm-dev
sudo apt-get install -y libsqlite3-dev
# sudo apt-get install libcurl3 libxml2
sudo apt-get install libxml2-dev
sudo apt-get install libcurl4-openssl-dev
sudo apt-get install libpq-dev
sudo apt-get install nodejs
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
