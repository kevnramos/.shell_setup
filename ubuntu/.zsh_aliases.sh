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
alias ports="sudo lsof -i -P -n | grep LISTEN"
alias size="du -s --si"

alias gs="git status"
alias gb="git branch"
alias gl="git log"

alias make-server="sudo systemctl set-default multi-user.target && init 6"
alias make-desktop="sudo systemctl set-default graphical.target && init 6"

alias software-update="sudo apt update && sudo apt upgrade"


######## Project Specific IT490 ########
alias front="cd ~/Documents/490-Project/frontend && nghost"
alias back="cd ~/Documents/490-Project/rabbitClient && pro"
alias fb="~/./setup.sh"
alias rmq="sudo ~/./makermq.sh"
alias fclear="sudo lsof -t -i tcp:4200 | xargs kill -9 && sudo lsof -t -i tcp:3000 | xargs kill -9"