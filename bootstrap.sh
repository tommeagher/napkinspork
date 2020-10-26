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

# Apps
apps=(
  1password
  adium
  ccleaner
  dropbox
  google-chrome
  slack
  appcleaner
  firefox
  vagrant
  iterm2
  sublime-text
  skype
  onionshare
  openrefine
  thunderbird
  gpg-suite
  virtualbox
  libreoffice
  tabula
  tor-browser
  navicat-premium-essentials
  zoomus
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

#install zsh theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>! ~/.zshrc

#initialize my postgres thing
#initdb /usr/local/var/postgres/ -E utf-8
#pgup

#symlink the bash_profile to .zshenv
#.bash_rc to .zshrc