#!/bin/bash
#
# Script to perform some common system operations
#
COMMAND_END_TEXT="Done. Type in 'q' and press Enter to quit."
while :
do
	clear
	if [ "$EXIT_STATUS" = "q" ]; then
		exit 0
	fi
	echo "************************"
	echo "* My tools *"
	echo "************************"
	echo "* [1] Add github key "
	echo "* [2] Add Koding VM key "
	echo "* [3] Add Nitrous VM key"
	echo "* [k] Connect to Koding VM "
	echo "* [n] Connect to Nitrous VM "
	echo "* [d] Clone dotfiles repo "
	echo "* [s] Clone setup repo "
	echo "* [a] Set up SSH agent "
	echo "* [x] Fix .ssh group issue"
	echo "* [0] Exit "
	echo "************************"
	echo -n "Enter your menu choice [choice]: "
	read yourch
	echo
	case $yourch in
		1) chmod 0400 $HOME/.ssh/id_rsa_g && ssh-add $HOME/.ssh/id_rsa_g && echo "Added key... Type in 'q' and press Enter to quit." ; read EXIT_STATUS;;
		2) chmod 0400 $HOME/.ssh/private2.key && ssh-add $HOME/.ssh/private2.key && echo "Added key... Type in 'q' and press Enter to quit." ; read EXIT_STATUS;;
		3) chmod 0400 $HOME/.ssh/private1.key && ssh-add $HOME/.ssh/private1.key && echo "Added key... Type in 'q' and press Enter to quit." ; read EXIT_STATUS;;
		k) ssh vm-0.clumsyassassin.koding.kd.io;;
		n) ssh action@euw1.actionbox.io -p 12888;;
		d) 	if [ -d ./dotfiles/ ]; then
				mv dotfiles dotfiles.old
				git clone git@github.com:Quantza/dotfiles.git && echo "Cloned dotfiles... Type in 'q' and press Enter to quit." ;
				read EXIT_STATUS;
			fi;;
		s) if [ -d ./setup/ ]; then
				mv setup setup.old
				git clone git@github.com:Quantza/setup.git && echo "Cloned setup.. Type in 'q' and press Enter to quit." ;
				read EXIT_STATUS;
			fi;;
		a) 	SSHAGENT=/usr/bin/ssh-agent
			SSHAGENTARGS="-s"
			if [ -z "$SSH_AUTH_SOCK" -a -x "$SSHAGENT" ]; then
				eval `$SSHAGENT $SSHAGENTARGS`
				trap "kill $SSH_AGENT_PID" 0
			fi;
			echo $COMMAND_END_TEXT ; read EXIT_STATUS;;
		x) 	cd $HOME/.ssh && chgrp Users *;
			echo $COMMAND_END_TEXT ; read EXIT_STATUS;;
		0) exit 0;;
		*) echo "Oops! Please select a valid option.";
	echo "Press Enter to continue..." ; read ;;
	esac
done