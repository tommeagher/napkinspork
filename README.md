#NapkinSpork
##Everything you need to start eating like a king
###Setting up a new Mac OS X machine

Preparing for my next new machine, inspired by...
http://lapwinglabs.com/blog/hacker-guide-to-setting-up-your-mac

and these trailblazers:
+ http://blog.apps.npr.org/2013/06/06/how-to-setup-a-developers-environment.html
+ https://github.com/geraldarthur/mise-en-place
+ https://github.com/chrishwiggins/mise/blob/master/sh/aliases-public.sh
+ https://github.com/paulirish/dotfiles

Here's what we have:

+ .alias
+ .bash_profile
+ .bashrc
+ .brew
+ .gitconfig (set up for me)
+ .gitignore
+ .secrets_template
+ bootstrap.sh, which will probably shit the bed


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
https://devcenter.heroku.com/articles/keys#adding-keys-to-heroku

Add your various API keys to ~/.secrets

##Data and databases
A few power data tools that brew cask doesn't support yet:

+ TabulaPDF: http://tabula.nerdpower.org/
+ OpenRefine: http://openrefine.org/download.html
+ MDBLite: For those rare times someone hands you a really old Access file, available on the app store.

##Email
Thunderbird should be installed through the bootstrap script, but you'll need to configure it for GPG with Enigmail: https://addons.mozilla.org/en-US/thunderbird/addon/enigmail/

##Powerline
Be sure to download the fonts, if it didn't work automatically. https://github.com/powerline/fonts
Then go into Iterm and set the non-ascii font to Ubuntu Mono derivative, per this: https://powerline.readthedocs.io/en/latest/troubleshooting/osx.html#i-cant-see-any-fancy-symbols-whats-wrong

##Chat/IM
Slack and Adium are installed, but if you want to Tweet, get Tweetbot in the app store.
You'll want to add these to IRSSI when you start it up:

```
/NETWORK ADD -autosendcmd "/^msg nickserv identify yourpassword;wait 2000”
/NETWORK ADD -autosendcmd “/^join #newsapps
```

You can also adjust its conf settings in /usr/local/etc/irssi.conf

##Security
Install your own password manager of choice. I like 1password

You should already have tor browser and onionshare installed. You'll also want to add these beauties:

+ Minilock https://minilock.io/
+ cryptocat https://crypto.cat/


