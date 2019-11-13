#!/bin/bash
current_branch=$(git symbolic-ref HEAD | sed -e 's,.*/\(.*\),\1,')
alert_merge_branches=("staging")

for branch in "${alert_merge_branches[@]};" 
do
	if [ "$branch" = "$current_branch" ]
	then  
		echo -en "\033[31m************************************************\033[0m\n"
		echo -en "\033[31mYou're about to push $branch. Continue? [y|n] \033[0m"
		echo -en "\033[1m"
		read -n 1 -r < /dev/tty
		echo -en "\033[0m"
		
		echo
		if echo "$REPLY" | grep -E '^[Yy]$' > /dev/null
		then
			exit 0
		fi
		exit 1
	fi 
done
exit 0