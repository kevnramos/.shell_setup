# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Set up the prompt

autoload -Uz promptinit
promptinit
prompt adam1

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zmodload -i zsh/complist

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias ls="ls -F --color -I 'Icon'$'\r'"
alias l="ls"
alias ll="ls -l"
alias la="ls -a"
# show hidden files
alias l.='ls -d1 .*'

alias c=clear
alias src="source ~/.zshrc"
alias nghost="ng serve --host 0.0.0.0" # For Angular Server
alias pro="php -S 0.0.0.0:3000 -t ."
alias front="cd ~/Documents/490-Project/frontend && nghost"
alias back="cd ~/Documents/490-Project/rabbitClient && pro"

alias gs="git status"
alias gb="git branch"
alias gl="git log"

alias make-server="sudo systemctl set-default multi-user.target && init 6"
alias make-desktop="sudo systemctl set-default graphical.target && init 6"

alias software-update="sudo apt update && sudo apt upgrade"

alias fb="~/./setup.sh"

alias rmq="sudo ~/./makermq.sh"
alias ports="sudo lsof -i -P -n | grep LISTEN"
alias fclear="sudo lsof -t -i tcp:4200 | xargs kill -9 && sudo lsof -t -i tcp:3000 | xargs kill -9"

# Load Angular CLI autocompletion.
source <(ng completion script)
