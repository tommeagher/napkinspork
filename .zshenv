export PATH="/usr/local/bin:$PATH"
export PATH="$PATH:/usr/local/sbin"
export NODE_PATH="/usr/local/lib/node_modules"

###PSQL
#export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.3/bin
#alias pgdown='pg_ctl -D ~/Library/Application\ Support/Postgres/var-9.3 stop -s -m fast'
#alias pgup='pg_ctl -D ~/Library/Application\ Support/Postgres/var-9.3 -l ~/Library/Application\ Support/Postgres/var-9.3/server.log start'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export PATH="/usr/local/opt/findutils/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

#make sure all locale is utf-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"

#pipenv variable to make virtualenvs in the project
export PIPENV_VENV_IN_PROJECT=1