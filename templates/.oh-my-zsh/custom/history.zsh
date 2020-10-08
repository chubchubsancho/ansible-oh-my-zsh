{{ ansible_managed | comment }}

setopt append_history
setopt extended_history
setopt hist_ignore_all_dups
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt inc_append_history
setopt inc_append_history_time
setopt share_history

HISTFILE=~/.history
HISTSIZE=5000
SAVEHIST=100000
