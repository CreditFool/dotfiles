# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

# PFetchh
PATH="$HOME/Program/pfetch:$PATH"
PF_INFO="ascii title os host kernel wm shell uptime memory"
export PATH
export PF_INFO

# Go Path
PATH="/usr/local/go/bin:$PATH"
export PATH

# Cargo bin Path
PATH="~/.cargo/bin:$PATH"
export PATH

# Alias

alias bconfig="nvim ~/.bashrc"

#

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="[\u@\h \W] \[\e[91m\]\$(parse_git_branch)\[\e[00m\]$ "

alias venv="source .venv/bin/activate"
. "$HOME/.cargo/env"

##-----------------------------------------------------
## synth-shell-prompt.sh
if [ -f /home/creditfool/.config/synth-shell/synth-shell-prompt.sh ] && [ -n "$( echo $- | grep i )" ]; then
	source /home/creditfool/.config/synth-shell/synth-shell-prompt.sh
fi

##-----------------------------------------------------
## better-ls
## if [ -f /home/creditfool/.config/synth-shell/better-ls.sh ] && [ -n "$( echo $- | grep i )" ]; then
##  	source /home/creditfool/.config/synth-shell/better-ls.sh
## fi

##-----------------------------------------------------
## alias
if [ -f /home/creditfool/.config/synth-shell/alias.sh ] && [ -n "$( echo $- | grep i )" ]; then
	source /home/creditfool/.config/synth-shell/alias.sh
fi

##-----------------------------------------------------
## better-history
if [ -f /home/creditfool/.config/synth-shell/better-history.sh ] && [ -n "$( echo $- | grep i )" ]; then
	source /home/creditfool/.config/synth-shell/better-history.sh
fi

##-----------------------------------------------------
## NVM Installation
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# pfetch