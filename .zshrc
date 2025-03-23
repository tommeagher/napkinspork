#secret env vars I don't want to check into version control
source ~/.secrets

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

eval "$(rbenv init -)"

#for rabbitmq
export PATH=$PATH:/usr/local/sbin

source ~/.iterm2_shell_integration.zsh

#setting various aliases for common commands

alias please='sudo'
alias pls='sudo'

alias la='ls -al'

alias rstudio='open -a RStudio .'

alias tmp='open https://www.themarshallproject.org/'
alias nyt='open http://www.nytimes.com/'

#alias pandas="workon pandas && ipython --pylab"

alias server='python -m http.server'

alias rbup='brew services start rabbitmq' #to launch rabbitmq in background
alias rbdown='brew services stop rabbitmq'
alias rbagain='brew services restart rabbitmq'

alias newrelic='heroku addons:open newrelic --app knell'

alias fosh='foreman run python manage.py shell'
alias herosh='heroku run python manage.py shell'
alias fart='foreman start'
alias hestart='heroku restart'

alias pt='papertrail'

alias ptweb='heroku addons:open papertrail'

alias shot='cd ~/dev/covid-screenshots/ && pipenv run python scraper.py'

#alias pgdown='pg_ctl -D ~/Library/Application\ Support/Postgres/var-9.3 stop -s -m fast'
#alias pgup='pg_ctl -D ~/Library/Application\ Support/Postgres/var-9.3 -l ~/Library/Application\ Support/Postgres/var-9.3/server.log start'

#to create a new TMP graphic
#give it a slug
function newgfx() {
  git clone git@github.com:themarshallproject/gfx-v2.git $1
  cd $1
  bash setup.sh
}

#to clone an existing graphic
function clonegfx() {
  git clone git@github.com:themarshallproject/$1.git
  cd $1
  bash setup.sh
}
