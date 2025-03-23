# this is not ready for production. Needs more testing

# Check for Homebrew,
# Install if we don't have it
# homebrew will install command line tools
if test ! $(which brew); then
  echo "Installing homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

eval "$(/opt/homebrew/bin/brew/shellenv)"

# if homebrew doesn't install CLT, then install xcode command line tools
xcode-select --install
# or visit https://developer.apple.com/download/more/?=command%20line%20tools 
# to download xcode command line tools only

# Update homebrew recipes
brew update

brew doctor

source ~/.brew

#install gulp
npm install gulp-cli -g

# Apps
apps=(
  1password
  appcleaner
  ccleaner
  cyberduck
  dropbox
  firefox
  google-chrome
  gpg-suite
  iterm2
  ivpn
  libreoffice
  onionshare
  openrefine
  qgis
  rstudio
  skype
  slack
  sublime-text
  tabula
  thunderbird
  tor-browser
  vagrant
  virtualbox
  visual-studio-code
  zoom
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

#copy the .zsh files to the bash_profile
cp .zshrc ~/.zshrc
cp .zshenv ~/.zshenv
cp .zshprofile ~/.zshprofile
cp .gitconfig ~/.gitconfig
cp .gitignore ~/.gitignore
cp .secrets_template ~/.secrets
echo "be sure to add your secret env vars to ~/.secrets"

#set up to use pyenv in your shells
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zprofile
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zprofile
echo 'eval "$(pyenv init -)"' >> ~/.zprofile
echo 'eval "$(nodenv init -)"' >> ~/.zprofile

#add homebrew to your path
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
