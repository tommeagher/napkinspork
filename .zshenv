source ~/.alias
source ~/.secrets

#$PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH

export PATH=/usr/local/bin:$PATH
#export PATH=/usr/local/lib/python2.7/site-packages:$PATH
export PATH=$PATH:/usr/local/sbin
#source /usr/local/bin/virtualenvwrapper_lazy.sh
export NODE_PATH=/usr/local/lib/node_modules

###PSQL
#export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.3/bin
#alias pgdown='pg_ctl -D ~/Library/Application\ Support/Postgres/var-9.3 stop -s -m fast'
#alias pgup='pg_ctl -D ~/Library/Application\ Support/Postgres/var-9.3 -l ~/Library/Application\ Support/Postgres/var-9.3/server.log start'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export PATH="/usr/local/opt/findutils/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"


eval "$(rbenv init -)"

