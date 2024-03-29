# Useful Git Commands
- `git log` - View the commit history
- `git reflog` - View the history of reference changes
- `git checkout -b "branch name"` - Creates a new branch off of the current branch
- `git remote -v` - Displays the remote origin URLs for fetch and push
- `git config --get remote.origin.url` - Displays just the remote origin URL
- `git remote show origin` - Displays the full output showing which local branches are set up to track which remote branches for pushing and pulling 
- `git branch -vv` - View which remote branches that local branches are tracking
- `git branch -u origin/name-of-branch` - Sets the upstream for a local branch to track a remote branch
- `git push -u origin HEAD` - Creates a remote branch with the same name as the local branch, sets the local branch to track the remote branch, then pushes the local branch to the remote branch
- `git branch -a` - View all branches for the repo
- `git fetch --prune` - Deletes local references to remote branches that no longer exist
- `git switch -` - Switches to the previous branch
- `git clean -xdf` - Deletes all files and directories that aren't tracked as part of the repo. `-x` includes files even if they're ignored by .gitignore. `-d` includes directories. `-f` is force. This is the "nuke everything" command, similar to doing a fresh clone.
- `git reset --soft HEAD~1` - Go back in time by one commit. `--soft` means that the changes from the most recent commit will be staged.
- `git stash push --staged -m "some message"` - Creates a stash just with files that are staged
- `git config --global push.default current` - Makes it so that branches created locally will automatically create a remote branch when pushed if a remote branch doesn't already exist
- `git config --list` - List the key-value pairs in the config
- `git config --global user.name "<insert name here>"` - Sets the user's name in the global config
- `git config --global user.email "<insert email here>"` - Sets the user's email in the global config
  
