bold=$(tput bold);
reset=$(tput sgr0);
black=$(tput setaf 0);
cyan=$(tput setaf 6);
green=$(tput setaf 71);
orange=$(tput setaf 130);
red=$(tput setaf 167);
grey=$(tput setaf 7);
yellow=$(tput setaf 228);


PS1="\[${orange}${bold}\]\u ";
PS1+="\[${orange}\]》";
PS1+="\[${reset}\]";
PS1+="\[${cyan}\]\h ";
PS1+="\[${green}\]\W $ ";
PS1+="\[${reset}\]";



export PS1;



PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"
PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

alias 'll'='ls -l'
alias 'la'='ls -a'
alias 'ls'='ls --color -x'
