# Moving to fish!
# brew install fish
# sudo echo "/usr/local/bin/fish" >> /etc/shells
# chsh -s

# alias fix-spotlight='find . -type d -name "node_modules" -exec touch "{}/.metadata_never_index" \;'

export TERM=xterm-256color

export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="candy"

# CASE_SENSITIVE="true"
HYPHEN_INSENSITIVE="true"

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
plugins=(git git-extras common-aliases zsh-autosuggestions)


# User configuration


export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"


source $ZSH/oh-my-zsh.sh


# You may need to manually set your language environment
# export LANG=en_US.UTF-8


# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi


# Compilation flags
# export ARCHFLAGS="-arch x86_64"


# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"


# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


alias l="sl -a"
alias vs="vagrant ssh"
alias vh="vagrant halt"
alias vu="vagrant up"
alias key="pbcopy < ~/.ssh/id_rsa.pub;cat ~/.ssh/id_rsa.pub"

# Customize to your needs...
ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""


# -------------------------------------------------------------------
# cd
# -------------------------------------------------------------------
  
alias pp='cd ~/projects'
alias dk='cd ~/Desktop'
alias pem='cd ~/projects/ssh-pem'
alias o='open .'
alias l='ls -al'
alias cl='clear'

# -------------------------------------------------------------------
# dvm
# -------------------------------------------------------------------

alias dvm='composer create-project drupal-composer/drupal-project:8.x-dev drupal --stability dev --no-interaction'
alias guy='composer require --dev geerlingguy/drupal-vm'

# -------------------------------------------------------------------
# Git aliases
# -------------------------------------------------------------------
 
alias ga='git add -A'
alias gp='git push'
alias gl='git log'
alias gs='git status'
alias gd='git diff'
alias gm='git commit -m'
alias gma='git commit -am'
alias gb='git branch'
alias gc='git checkout'
alias gra='git remote add'
alias grr='git remote rm'
alias gpu='git pull'
alias gcl='git clone'
alias gta='git tag -a -m'
alias gf='git reflog'
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh


# -------------------------------------------------------------------
# FUNCTIONS
# -------------------------------------------------------------------
 
# return my IP address
function myip() {
    ifconfig lo0 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "lo0       : " $2}'
     ifconfig en0 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "en0 (IPv4): " $2 " " $3 " " $4 " " $5 " " $6}'
     ifconfig en0 | grep 'inet6 ' | sed -e 's/ / /' | awk '{print "en0 (IPv6): " $2 " " $3 " " $4 " " $5 " " $6}'
     ifconfig en1 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "en1 (IPv4): " $2 " " $3 " " $4 " " $5 " " $6}'
     ifconfig en1 | grep 'inet6 ' | sed -e 's/ / /' | awk '{print "en1 (IPv6): " $2 " " $3 " " $4 " " $5 " " $6}'
}


export PATH=$PATH:/usr/local/bin/packer
export PATH=$PATH:/usr/local/bin/composer
export PATH=$PATH:/Users/jrl/.plenv/versions/5.22.0/bin

export PATH="$HOME/.plenv/bin:$PATH"
eval "$(plenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export PATH="$HOME/.composer/vendor/bin:$HOME/Library/Python/3.6/bin:PATH:$PATH"

export PATH=/usr/local/php5/bin:$PATH
