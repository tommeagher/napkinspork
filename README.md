# NapkinSpork
## Everything you need to start eating like a king
### Setting up a new Mac OS X machine

Preparing for my next new machine, inspired by...
http://lapwinglabs.com/blog/hacker-guide-to-setting-up-your-mac

and these trailblazers:
+ http://blog.apps.npr.org/2013/06/06/how-to-setup-a-developers-environment.html
+ https://github.com/geraldarthur/mise-en-place
+ https://github.com/chrishwiggins/mise/blob/master/sh/aliases-public.sh
+ https://github.com/paulirish/dotfiles

Here's what we have:

+ .alias
+ .bash_profile >> .zshenv
+ .bashrc >> .zshrc
+ .brew 
+ .gitconfig (set up for me)
+ .gitignore
+ .secrets_template
+ bootstrap.sh, which will probably shit the bed

open machine,
add your wifi to it
migration assistant?
remove icons from the menu bar
allow mac to run any updates needed

open terminal

from bash_profile to .zshenv
move over chrome bookmarks and extensions by syncing your account
sync dropbox for 1password
add your license to sublime text 

install R (and Quartz and R studio)  https://moderndive.com/1-getting-started.html


create your ssh key and set up github to https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/connecting-to-github-with-ssh

If you want to use these, be sure to read the scripts before you run them. All you have to do to get started is run ``bash bootstrap.sh`` and then go through and tweak these other things by hand.

After that's run and you've confirmed it worked correctly, then move some of the hidden files to the root user directory

```
cp .alias ~/
cp .bash_profile ~/
cp .secrets_template ~/.secrets
cp .bashrc ~/
cp .gitconfig ~/
cp .gitignore ~/
```

##The basics
Create an ssh key: https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/

Add your ssh aliases: http://collectiveidea.com/blog/archives/2011/02/04/how-to-ssh-aliases/

Add your key to heroku, github, bitbucket, etc
https://devcenter.heroku.com/articles/<keys id="adding-keys-to-heroku"></keys>

Add your various API keys to ~/.secrets

##Data and databases
A few power data tools that brew cask doesn't support yet:
audacity
filezilla
google drive
qgis
tweetbot
git lfs

+ MDBLite: For those rare times someone hands you a really old Access file, available on the app store.

##Email
Thunderbird should be installed through the bootstrap script, but you'll need to configure it for GPG with Enigmail: https://addons.mozilla.org/en-US/thunderbird/addon/enigmail/

##Chat/IM
Slack and Adium are installed, but if you want to Tweet, get Tweetbot in the app store.

##Security
Install your own password manager of choice. I like 1password

You should already have tor browser and onionshare installed. You'll also want to add these beauties:

+ Minilock https://minilock.io/
+ cryptocat https://crypto.cat/