#!/bin/zsh
#
# If is under linux console; run fbterm

if [[ "$TERM" == "linux" ]]; then
	if [[ ! -f $HOME/.nofbterm ]]; then
		export LANG=zh_CN.UTF-8
		export TERM=fbterm
		exec fbterm
		#exec ifbterm ~/myimages/back*
	fi
fi
