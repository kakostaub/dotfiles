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
    export PS1="\[\e[36m\]\u@\h \[\e[33m\]\w\[\e[0m\]\n\$ "
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
alias top="top -c"
alias lsg="ls -t | grep -i"
alias llg="ls -alt | grep -i"

if [[ "$(uname)" =~ ^CYGWIN ]]; then
  cd $USERPROFILE
fi
