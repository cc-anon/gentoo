# Interactive Check
[[ $- != *i* ]] && return

# Alaises
alias .='cd ..'
alias ..='cd ../..'
alias grep='grep --color=auto'
alias ls='lsd -AhFlt --group-dirs first'
alias reboot='doas reboot'
alias poweroff='doas poweroff'
alias emerge='doas emerge'
alias rasp='ssh root@192.168.1.150'

# Prompt
export PS1="\[\e[31m\]\A\[\e[m\]\[\e[31m\]>\[\e[m\] "

# Exports
export EDITOR=nvim

# History
set +o history

# LS after CD
function cd {
  builtin cd "$@" && ls -F
}

# Git push
function gpush {
  git add . && git commit -m $1 && git push -u origin main
}
