

###
## zsh modules
###
autoload compinit && compinit
zmodload zsh/compctl
zmodload zsh/complist
zmodload zsh/computil
zmodload zsh/zutil



###
## LOCALE
###
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

export LC_MESsAGES="en_US.UTF-8"

export LC_COLLATE="ru_RU.UTF-8"
export LC_MONETARY="ru_RU.UTF-8"
export LC_NUMERIC="ru_RU.UTF-8"



###
## ALIASES
###
## console
alias grep="egrep --color=auto --colour=always"
alias mc="mc -cxXU"
alias ls="ls --color=auto -F -T 2"
alias rm="rm -I"
alias tmux="tmux -2lu"


###
## HISTORY
###
HISTFILE=${HOME}/.histfile
HISTSIZE=1000
SAVEHIST=1000


###
## PLUGINS
###
plugins=(colorize git mercurial)

###
## PROMPTS
###
PS1="[%F{magenta}${(L)${USER}}%F{white} %F{yellow}%3~%f]%K%#%k %f"
RPS1="%F{white}[%F{red}%B%M%b%F{white}|%F{green}%D %T%F{white}]%f"


## load otp
[[ -f ~/.otp/otprc ]] && {
  printf "/i/ loading otprc..\n"
  . ~/.otp/otprc
  }

