#!/bin/sh

curl -sL https://deb.nodesource.com/setup_14.x | sudo sh

curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

#install python prerequisites
sudo apt install -y nodejs yarn



