# Git hooks
This project stores some git hooks that can help streamline working with multiple branches.

Pre push hooks were inspired by [Colch's Git pre-push hook](https://gist.github.com/ColCh/9d48693276aac50cac37a9fce23f9bda).

## Available hooks 
Currently there are the folling hooks available on this repository: 

* *prehook-push-denied.sh* - denies push to the branches listed on *no\_push\_branches* variable; 
* *prehook-ask-confirmation.sh* - asks for confirmation when pushing to the branches listed on *confirm_branches* variable. 


## Install

* Enable git templates

```bash
git config --global init.templatedir '~/.git-templates'

```

* create a directory to hold the global hooks:

```bash
mkdir -p ~/.git-templates/hooks
```

* get one of the hooks available, and copy it to the templates directory. Make sure to apply the correct filename to the hook being copied (Check [Githooks list](https://git-scm.com/docs/githooks)).
Example: 

```bash
cp prehook-push-denied.sh ~/.git-templates/hooks/pre-push
```

* make it executable

```
chmod a+x ~/.git-templates/hooks/pre-push
```

* if you like to add it to an existing project just re-init it: 

`[projectdir]$ git init`

This will not overwrite existing commits, or existing hooks.
New projects will have the hook instaled by default. 

* To remove it from a specific project, it has to be removed from the project's .git directory. 

