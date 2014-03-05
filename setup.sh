#https://www.digitalocean.com/community/articles/how-to-install-ruby-on-rails-on-ubuntu-12-04-lts-precise-pangolin-with-rvm

sudo apt-get update
sudo apt-get install curl
\curl -L https://get.rvm.io | bash -s stable
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
