#!/bin/bash
current_branch=$(git symbolic-ref HEAD | sed -e 's,.*/\(.*\),\1,')
no_push_branches=("master" "some-other-branch")

for branch in "${no_push_branches[@]};" 
do
	if [ "$branch" = "$current_branch" ]
  	then
		echo -en "\033[31m************************************************\033[0m\n"
		echo -en "\033[31m You cannot push to $current_branch! DENIED! \033[0m\n"
		echo -en "\033[31m************************************************\033[0m\n"
		exit 1
  	fi
done
exit 0