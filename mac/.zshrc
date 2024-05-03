# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#           _____                    _____          
#          /\    \                  /\    \         
#         /::\____\                /::\    \        
#        /:::/    /               /::::\    \       
#       /:::/    /               /::::::\    \      
#      /:::/    /               /:::/\:::\    \     
#     /:::/____/               /:::/__\:::\    \    
#    /::::\    \              /::::\   \:::\    \   
#   /::::::\____\________    /::::::\   \:::\    \  
#  /:::/\:::::::::::\    \  /:::/\:::\   \:::\____\ 
# /:::/  |:::::::::::\____\/:::/  \:::\   \:::|    |
# \::/   |::|~~~|~~~~~     \::/   |::::\  /:::|____|
#  \/____|::|   |           \/____|:::::\/:::/    / 
#        |::|   |                 |:::::::::/    /  
#        |::|   |                 |::|\::::/    /   
#        |::|   |                 |::| \::/____/    
#        |::|   |                 |::|  ~|          
#        |::|   |                 |::|   |          
#        \::|   |                 \::|   |          
#         \:|   |                  \:|   |          
#          \|___|                   \|___|          
                                                  
setopt PROMPT_SUBST
# PROMPT="%B%F{130}%n%f%b";
# PROMPT+="%B%F{9} 》%f%b";
# PROMPT+="%F{6}%m%f";
# PROMPT+="%B%F{71} %~%b %# %f";
# PROMPT+="%B%F{9}
# ➜ %f%b";

export ANDROID_HOME=/Users/kevin/Library/Android/sdk
export RPROMPT='%F{yellow}%*%f'

 
# Setup the prompt with git branch name
# PROMPT='%n@%m in ${PWD/#$HOME/~} ${vcs_info_msg_0_} > '


PROMPT='%B%F{130}%n%f%b %B%F{9}》%F{6}%m%f%B%F{71} %~%b %# %f${vcs_info_msg_0_}';
PROMPT+="%B%F{9}
➜ %f%b";


PATH="/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
PATH="/opt/homebrew/opt/gnu-sed/libexec/gnubin:$PATH"
PATH="/opt/homebrew/opt/grep/libexec/gnubin:$PATH"
PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
PATH="/opt/homebrew/opt/node@16/bin:$PATH"
PATH="/opt/homebrew/opt/php-cs-fixer@2/bin:$PATH"
PATH="$ANDROID_HOME/platform-tools:$PATH"


# case-insensitive matching only if there are no case-sensitive matches
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

# tab complete select visually
zstyle ':completion:*' menu select

# initialize advanced tab completion
autoload -Uz compinit && compinit

# tab completion with highlighting
zmodload -i zsh/complist

# Load vcs information
autoload -Uz vcs_info
precmd() { vcs_info }



# Format the vcs_info_msg_0_ variable
COLOR_DEF=$'\e[0m'
COLOR_GIT=$'\e[38;5;39m'
zstyle ':vcs_info:git:*' formats ${COLOR_GIT}'(%b)'${COLOR_DEF}

if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi

if [ -f ~/.zsh_aliases.sh ]; then
    . ~/.zsh_aliases.sh
fi


############################################################################
# Powerlevel10k

source ~/powerlevel10k/powerlevel10k.zsh-theme


PROMPT_P10K="p10k_styles/.p10k.zsh"
# PROMPT_P10K="p10k_styles/.p10k_cool_no_logo_boneless.zsh"
# PROMPT_P10K="p10k_styles/.p10k_cool_no_logo.zsh"
# PROMPT_P10K="p10k_styles/.p10k_plain_.zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/$PROMPT_P10K ]] || source ~/$PROMPT_P10K


# See ~/.zshrc changes:

#   diff $TMPDIR/.zshrc.VQ74kiCXYe ~/.zshrcPOWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true


# Load Angular CLI autocompletion.
# source <(ng completion script)
