# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="$HOME/.bin:$PATH"

# recommended by brew doctor
export PATH="/usr/local/bin:$PATH"
eval "$(rbenv init - --no-rehash)"

# Path to your oh-my-zsh installation.
export ZSH=/Users/brendanbuckingham/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="mortalscumbag"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git history-substring-search pow brew gem knife last-working-dir web-search tmuxinator)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

export EDITOR='vim'
# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# history
 export HISTSIZE=1000000
 export SAVEHIST=1000000

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# beep
 unsetopt beep

# bind for vi mode
 bindkey '^R' history-incremental-search-backward
# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias zshconfig="vim ~/.zshrc"
alias add-ssh="ssh-add ~/.ssh/id_rsa"
alias be="bundle exec"
alias refresh-rails="bundle exec rake db:drop && bundle exec rake db:create && bundle exec rake pgbackups:smart_import && bundle exec rake db:migrate && bundle exec rake db:test:prepare && touch tmp/restart.txt"
alias run-wellbe-tests="RAILS_ENV=test bundle exec rake db:test:load && RAILS_ENV=test bundle exec rake minitest:all && RAILS_ENV=test bundle exec rake spec:javascript"
alias wellbe-refresh-passwords="bundle exec rake db:drop && bundle exec rake db:create && bundle exec rake pgbackups:smart_import && bundle exec rake db:migrate && rails r 'script/update_dev_passwords.rb' && touch tmp/restart.txt && RAILS_ENV=test bundle exec rake db:test:load && RAILS_ENV=test bundle exec rake db:fixtures:load"
alias tests="bundle exec guard"
alias ios-simulator-reset="xcrun simctl erase all"
alias ios-simulator-open="open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app"
# create new tmux instances
tm() {
  tmux new -s "$*"
}
# attach to default tmux instances
alias tla="tmux a -t logs"
alias tra="tmux a -t rc"
alias tta="tmux a -t tests"
alias trs="tmux a -t rails_setup"

# open gitsh
alias gs="gitsh"

# hub alias
alias git="hub"

# added by travis gem
[ -f /Users/brendanbuckingham/.travis/travis.sh ] && source /Users/brendanbuckingham/.travis/travis.sh
