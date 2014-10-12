#https://www.digitalocean.com/community/articles/how-to-install-ruby-on-rails-on-ubuntu-12-04-lts-precise-pangolin-with-rvm

sudo apt-get update
sudo apt-get install curl
\curl -L https://get.rvm.io | bash -s stable
#there is a different source command for new rvm, however it is shown in the console log. 
source ~/.rvm/scripts/rvm
rvm requirements

#if rvm stops working ("gem list" might stop working) checkout:
#https://rvm.io/integration/gnome-terminal

#install Ruby
rvm install ruby
rvm use ruby --default

#Install Ruby Gems
rvm rubygems current

#install rails
gem install rails

#install some programs
sudo apt-get install nodejs
sudo apt-get install git
sudo apt-get install chromium-browser

#install sublime
#http://docs.sublimetext.info/en/latest/getting_started/install.html

#make sublime the default editor
#replace all gedit.desktop with sublime.desktop
sudo sublime /usr/share/applications/defaults.list

#make ambience have windows easier to resize
#http://askubuntu.com/questions/4109/how-do-i-increase-the-resize-margin-on-windows

#configure terminal as login shell


#install Phusion Passenger
#https://www.phusionpassenger.com/documentation/Users%20guide%20Nginx.html#install_on_debian_ubuntu
sudo apt-get install libcurl4-openssl-dev 

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 561F9B9CAC40B2F7
sudo apt-get install apt-transport-https ca-certificates

cd /etc/apt/sources.list.d/
touch passenger.list
vim passenger.list

##### !!!! Only add ONE of these lines, not all of them !!!! #####
# Ubuntu 14.04
deb https://oss-binaries.phusionpassenger.com/apt/passenger trusty main
# Ubuntu 12.04
deb https://oss-binaries.phusionpassenger.com/apt/passenger precise main
# Ubuntu 10.04
deb https://oss-binaries.phusionpassenger.com/apt/passenger lucid main
# Debian 7
deb https://oss-binaries.phusionpassenger.com/apt/passenger wheezy main
# Debian 6
deb https://oss-binaries.phusionpassenger.com/apt/passenger squeeze main

sudo chown root: /etc/apt/sources.list.d/passenger.list
sudo chmod 600 /etc/apt/sources.list.d/passenger.list
sudo apt-get update

sudo apt-get install nginx-extras passenger

#Edit /etc/nginx/nginx.conf and uncomment passenger_root and passenger_ruby.

sudo service nginx restart

#Specify a SECRET_KEY_BASE
export SECRET_KEY_BASE=******************

#test your app in the production environment
rails s -e production

#Installing Postgres
apt-get install postgresql-9.3
sudo apt-get install libpq-dev
gem install pg

#Install Postgres on Mac
brew update
brew doctor
brew install postgres
