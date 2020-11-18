# this is not ready for production. Needs more testing

# Check for Homebrew,
# Install if we don't have it
# homebrew will install command line tools
if test ! $(which brew); then
  echo "Installing homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# if homebrew doesn't install CLT, then install xcode command line tools
xcode-select --install
# or visit https://developer.apple.com/download/more/?=command%20line%20tools 
# to download xcode command line tools only

# Update homebrew recipes
brew update

brew doctor

source ~/.brew

#install git-lfs
git lfs install

#install gulp
npm install gulp-cli -g

# Apps
apps=(
  1password
  adium
  appcleaner
  ccleaner
  cyberduck
  dropbox
  encryptme
  firefox
  google-chrome
  gpg-suite
  iterm2
  libreoffice
  navicat-premium-essentials
  onionshare
  openrefine
  qgis
  skype
  slack
  sublime-text
  tabula
  thunderbird
  tor-browser
  vagrant
  virtualbox
  zoomus
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

#install zsh theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k

#initialize my postgres thing
#initdb /usr/local/var/postgres/ -E utf-8
#pgup

#symlink the bash_profile to .zshenv
ln -s .zshrc ~/.zshrc
ln -s .zshenv ~/.zshenv
ln -s .gitconfig ~/.gitconfig
ln -s .gitignore ~/.gitignore
cp .secrets_template ~/.secrets
echo "be sure to add your secret env vars to ~/.secrets"