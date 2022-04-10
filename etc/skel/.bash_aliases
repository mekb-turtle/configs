#!/bin/bash
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias diff='diff --color=auto'
alias s='true'
alias l='ls -Ah'
alias la='ls -A'
alias ll='ls -lh'
alias sl='ls'
alias lla='ls -lAh'
alias lal='ls -lAh'
alias vi='vim'
alias cd..='cd ..'
alias sym='ln -s'
alias :q='exit'
alias dmesg='sudo dmesg'
alias poweroff='sudo poweroff'
alias reboot='sudo reboot'
function pacman(){
	unset PACMAN_SUDO_0
	unset PACMAN_SUDO_1
	unset PACMAN_SUDO_2
	unset PACMAN_SUDO_3
	unset PACMAN_SUDO_4
	unset PACMAN_SUDO_5
	unset PACMAN_SUDO_6
	for arg in $*; do
		if [[ "$arg" == "--" ]]; then break; fi
		if [[ "$arg" == -* ]]; then
			if   [[ ( "$arg" == *D* && "$arg" != \-\-* ) || "$arg" == "--database" || "$arg" == "--databas" || "$arg" == "--databa" || "$arg" == "--datab" || "$arg" == "--data" || "$arg" == "--dat" || "$arg" == "--da" ]]; then
				if [[ -z "$PACMAN_SUDO_0" ]]; then PACMAN_SUDO_0=true; else PACMAN_SUDO_0=false; fi
			fi
			if [[ ( "$arg" == *R* && "$arg" != \-\-* ) || "$arg" == "--remove" || "$arg" == "--remov" || "$arg" == "--remo" || "$arg" == "--rem" ]]; then
				if [[ -z "$PACMAN_SUDO_0" ]]; then PACMAN_SUDO_0=true; else PACMAN_SUDO_0=false; fi
				PACMAN_SUDO_1=true
			fi
			if [[ ( "$arg" == *S* && "$arg" != \-\-* ) || "$arg" == "--sync" || "$arg" == "--syn" ]]; then
				if [[ -z "$PACMAN_SUDO_0" ]]; then PACMAN_SUDO_0=true; else PACMAN_SUDO_0=false; fi
				PACMAN_SUDO_5=true
				PACMAN_SUDO_1=true
			fi
			if [[ ( "$arg" == *g* && "$arg" != \-\-* ) || "$arg" == "--groups" || "$arg" == "--group" || "$arg" == "--grou" || "$arg" == "--gro" || "$arg" == "--gr" || "$arg" == "--g" ]]; then
				PACMAN_SUDO_6=true
			fi
			if [[ ( "$arg" == *i* && "$arg" != \-\-* ) || "$arg" == "--info" || "$arg" == "--inf" || "$arg" == "--in" ]]; then
				PACMAN_SUDO_6=true
			fi
			if [[ ( "$arg" == *l* && "$arg" != \-\-* ) || "$arg" == "--list" || "$arg" == "--lis" || "$arg" == "--li" ]]; then
				PACMAN_SUDO_6=true
			fi
			if [[ ( "$arg" == *s* && "$arg" != \-\-* ) || "$arg" == "--search" || "$arg" == "--searc" || "$arg" == "--sear" || "$arg" == "--sea" || "$arg" == "--se" ]]; then
				PACMAN_SUDO_6=true
			fi
			if [[ ( "$arg" == *U* && "$arg" != \-\-* ) || "$arg" == "--upgrade" ]]; then
				if [[ -z "$PACMAN_SUDO_0" ]]; then PACMAN_SUDO_0=true; else PACMAN_SUDO_0=false; fi
				PACMAN_SUDO_1=true
			fi
			if [[ ( "$arg" == *F* && "$arg" != \-\-* ) || "$arg" == "--files" ]]; then
				PACMAN_SUDO_3=true
			fi
			if [[ ( "$arg" == *y* && "$arg" != \-\-* ) || "$arg" == "--refresh" || "$arg" == "--refres" || "$arg" == "--refre" || "$arg" == "--refr" || "$arg" == "--ref" ]]; then
				PACMAN_SUDO_4=true
			fi
			if [[ ( "$arg" == *h* && "$arg" != \-\-* ) || "$arg" == "--help" || "$arg" == "--hel" || "$arg" == "--he" ]]; then
				PACMAN_SUDO_0=false
			fi
			if [[ ( "$arg" == *p* && "$arg" != \-\-* ) || "$arg" == "--print" ]]; then
				PACMAN_SUDO_2=true
			fi
		fi
	done
	if [[ $PACMAN_SUDO_3 == true && $PACMAN_SUDO_4 == true ]]; then
		if [[ -z "$PACMAN_SUDO_0" ]]; then PACMAN_SUDO_0=true; else PACMAN_SUDO_0=false; fi
	fi
	if [[ $PACMAN_SUDO_5 == true && $PACMAN_SUDO_6 == true ]]; then
		PACMAN_SUDO_0=false
	fi
	if [[ $PACMAN_SUDO_1 == true && $PACMAN_SUDO_2 == true ]]; then
		unset PACMAN_SUDO_0
	fi
	if [[ $PACMAN_SUDO_0 == true ]]; then
		unset PACMAN_SUDO_0
		sudo pacman $*
	else
		unset PACMAN_SUDO_0
		env pacman $*
	fi
	unset PACMAN_SUDO_0
	unset PACMAN_SUDO_1
	unset PACMAN_SUDO_2
	unset PACMAN_SUDO_3
	unset PACMAN_SUDO_4
	unset PACMAN_SUDO_5
	unset PACMAN_SUDO_6
}
alias systemctl='sudo systemctl'
function reset(){
	printf "\x1b[H\x1b[2J\x1b[3J\x1bc\x1b]104\x1b[!p\x1b[?3;4l\x1b[4l\x1b>\x1b[?69l"
}
function plogout(){
	pkill -u "${1:-$(id -u)}"
}
