# NapkinSpork
## Everything you need to start eating like royalty
### Setting up a new Mac OS X machine

Preparing for my next new machine, inspired by...
http://lapwinglabs.com/blog/hacker-guide-to-setting-up-your-mac

and these trailblazers:
+ http://blog.apps.npr.org/2013/06/06/how-to-setup-a-developers-environment.html
+ https://github.com/geraldarthur/mise-en-place
+ https://github.com/chrishwiggins/mise/blob/master/sh/aliases-public.sh
+ https://github.com/paulirish/dotfiles
+ https://github.com/GabeIsman/dotfiles

Here's what we have:

+ .zshrc
+ .zshenv
+ .brew 
+ .gitconfig, customized
+ .gitignore
+ .secrets_template
+ bootstrap.sh, which will probably shit the bed

## Getting started
Open your new Mac and add your Wifi connection to it. Allow the Mac to run any updates needed and then open the terminal.

Download this repo from Github and put it in a directory in the terminal. If you want to use these, be sure to read the scripts before you run them. All you have to do to get started is run ``bash bootstrap.sh`` and then go through and tweak these other things by hand.

After that's run and you've confirmed it worked correctly, browse through your hidden dotfiles in the root user directory, and be sure to add your secret env vars to ~/.secrets.


## The basics
Create an ssh key: https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/

Add your ssh aliases: http://collectiveidea.com/blog/archives/2011/02/04/how-to-ssh-aliases/

Add your key to heroku, github, etc
https://devcenter.heroku.com/articles/<keys id="adding-keys-to-heroku"></keys>
https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/connecting-to-github-with-ssh

Add your various API keys to `~/.secrets`.

Copy and move your PGP keys, importing them into GPG Keychain.

## Data and databases
install your own Python versions with [pyenv](https://github.com/pyenv/pyenv), which is set up by default with the brew script and set your global versions.

Install R (and Quartz and R studio)  https://moderndive.com/1-getting-started.html

Install PhantomJS
https://github.com/maaaaz/webscreenshot/wiki/PhantomJS-installation#windows

Then run this command in iterm:
`ln -s ~/phantomjs-2.1.1-macosx/bin/phantomjs /usr/local/bin/phantomjs`


Install Jupyter globally with pip so that we can have R kernel too:
https://github.com/themarshallproject/tmp_setup#jupyter-notebook

Install MS Office with the work key. LibreOffice is also installed by the .brew script

Move over Chrome bookmarks and extensions by syncing your account.
Add your license to sublime text.


## Email
Thunderbird should be installed through the bootstrap script, but you'll need to configure it for GPG with Enigmail: https://enigmail.net/index.php/en/user-manual/installation-of-enigmail
https://support.mozilla.org/en-US/kb/openpgp-thunderbird-howto-and-faq#:~:text=%E2%89%A1%20%3E%20Account%20Settings%20%3E%20select%20your,Create%20a%20New%20OpenPGP%20key.

## Chat/IM
Slack and Adium are installed, but if you want to Tweet, get Tweetbot in the app store. Audacity.

## Security
Install your own password manager of choice. I like 1password. Sync dropbox for 1password.

You should already have tor browser and onionshare installed.
