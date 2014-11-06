#Napkin spork
##Everything to start eating like a king
####Setting up a new Mac OS X machine

One README to rule them all!

Inspired by... 
http://lapwinglabs.com/blog/hacker-guide-to-setting-up-your-mac

as well as these trailblazers:
http://blog.apps.npr.org/2013/06/06/how-to-setup-a-developers-environment.html
And by mise and mise and mise
https://github.com/geraldarthur/mise-en-place
https://github.com/chrishwiggins/mise/blob/master/sh/aliases-public.sh
https://github.com/paulirish/dotfiles

Here's what we have here:
.alias
.secrets_template
.bash_profile
.bashrc
.brew
.gitconfig
.gitignore 

Most importantly, we have a bash script called bootstrap.sh that probably will shit the bed.

All you have to do to get started is run bash bootstrap.sh and then go through and tweak these other things by hand.

##The basics
Create an ssh key
Add your ssh aliases: http://collectiveidea.com/blog/archives/2011/02/04/how-to-ssh-aliases/
Add your key to heroku, github, bitbucket, etc
https://devcenter.heroku.com/articles/keys#adding-keys-to-heroku

mv .secrets_template .secrets
and add your various API keys

##Data and databases
A few power data tools that brew cask doesn't support yet: 
TabulaPDF: http://tabula.nerdpower.org/
OpenRefine: http://openrefine.org/download.html
MDBLite: For those rare times someone hands you a really old Access file, available on the app store.

##Email
Thunderbird should be installed through the bootstrap script, but you'll need to configure it for GPG with Enigmail: https://addons.mozilla.org/en-US/thunderbird/addon/enigmail/

##Chat/IM
Slack and Adium are installed, but if you want to Tweet, get Tweetbot in the app store.
You'll want to add these to IRSSI when you start it up:
irssi
/NETWORK ADD -autosendcmd "/^msg nickserv identify yourpassword;wait 2000”
/NETWORK ADD -autosendcmd “/^join #newsapps

You can also adjust its conf settings in /usr/local/etc/irssi.conf

##Security
Install your own password manager of choice. I like 1password

You should already have tor browser and onionshare installed. You'll also want to add these beauties: 
Minilock https://minilock.io/
cryptocat https://crypto.cat/