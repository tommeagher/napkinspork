#TODO This is a mess. Fix then test in vagrant

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update

brew doctor

source ~/.brew

# Apps
apps=(
  adium
  ccleaner
  dropbox
  google-chrome
  slack
  appcleaner
  firefox
  spotify
  vagrant
  arq
  flash
  iterm2
  sublime-text
  skype
  onionshare
  thunderbird
  gpgptools
  virtualbox
  libreoffice
  torbrowser
  filezilla
  google-drive
  navicat-premium
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

sudo easy_install pip 

sudo pip install virtualenv virtualenvwrapper
sudo pip install -r requirements.txt
pip install numpy
pip install scipy
pip install matplotlib
pip install jupyter
#pip install ipython
 
# install the QT libraries as described 
# in the text below before continuing
pip install pyzmq
pip install pygments

#install powerline
mkdir -p powerline-shell
cd powerline-shell
pip install --user git+git://github.com/Lokaltog/powerline

#install xcode command line tools
xcode-select --install

#install the jRuby and requirements for tabula-extractor and docsplit
rbenv install jruby-1.7.15
rbenv local jruby-1.7.15
rbenv rehash

jruby gem -S install tabula-extractor
jruby gem -S install docsplit

source ~/.bash_profile

ln -s '/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl' /usr/local/bin/subl

#initialize my postgres thing
initdb /usr/local/var/postgres/ -E utf-8
pgup