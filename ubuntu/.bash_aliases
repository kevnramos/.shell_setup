alias c=clear
alias src="source ~/.bashrc"
alias code='code --disable-gpu'
alias nghost="ng serve --host 0.0.0.0" # For Angular Server
alias pro="php -S localhost:3000 -t ."

alias gs="git status"
alias gb="git branch"
alias gl="git log"

alias make-server="sudo systemctl set-default multi-user.target && init 6"
alias make-desktop="sudo systemctl set-default graphical.target && init 6"

alias software-update="sudo apt update && sudo apt upgrade"

alias front="cd ~/Documents/490-Project/frontend && nghost"
alias back="cd ~/Documents/490-Project/rabbitClient && pro"
alias fb="~/./setup.sh"
alias rs="cd ~/Documents/490-Project/backend && ./dbListener.php"
alias rmq="sudo ~/./makermq.sh"