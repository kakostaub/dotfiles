# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

case "$-" in
  *i*)
    export PS1="[\u@\h \w \$?]\\$ \[$(tput sgr0)\]"
    ;;
esac

# History setting
export HISTSIZE=5000
export HISTFILESIZE=5000
export HISTTIMEFORMAT='%Y-%m-%d_%H:%M:%S_%Z '
shopt -s histappend # Append rather than overwrite history on exit
shopt -q -s cmdhist # Make multiline commands 1 line in history

# Alias
alias jdiff="\diff --side-by-side --ignore-case --ignore-blank-lines --ignore-all-space --suppress-common-lines"
alias mkdir="mkdir -p"

