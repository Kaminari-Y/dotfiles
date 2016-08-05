# Path to your oh-my-zsh installation.
export ZSH=${HOME}/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gallois"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(aws git my-env atom autojump brew bundler brew-cask cdd colored-man composer docker encode64 gem homeshick pow rails rake rbenv tig tmux vagrant web-search)

# User configuration
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
export PATH=$HOME/.rbenv/bin:$PATH
eval "$(rbenv init - zsh)"
export EDITOR=vim
source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=ja_JP.UTF-8

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"
#eval `ssh-agent` && ssh-add ~/.ssh/id_rsa

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# command aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias la="ls -ltra" 
alias lr="ls -ltr" 
alias grep="grep --color"
alias pstree="pstree -A"
alias rm='rmtrash'

# zsh-completions configuration
autoload -U compinit
compinit

# peco configuration
function peco-history-selection() {
  BUFFER=`\history -n 1 | tail -r  | awk '!a[$0]++' | peco --layout=bottom-up`
  CURSOR=$#BUFFER
  zle reset-prompt
}
zle -N peco-history-selection

# bindkey for myself
bindkey "^F" forward-word
bindkey "^B" backward-word
bindkey '^R' peco-history-selection

# history configuration
HISTFILE=~/.zsh_history
HISTSIZE=6000000
SAVEHIST=6000000

# setopt I added
setopt hist_ignore_dups
setopt share_history
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt print_eight_bit
setopt no_beep
setopt nolistbeep
setopt auto_cd
setopt auto_pushd
