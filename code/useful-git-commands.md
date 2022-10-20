# Useful Git Commands
- `git log` - View the commit history
- `git reflog` - View the history of reference changes
- `git branch -vv` - View which remote branches that local branches are tracking
- `git branch -u origin/name-of-branch` - Sets the upstream for a local branch to track a remote branch
- `git push -u origin HEAD` - Creates a remote branch with the same name as the local branch, sets the local branch to track the remote branch, then pushes the local branch to the remote branch
- `git branch -a` - View all branches for the repo
- `git fetch --prune` - Deletes local references to remote branches that no longer exist
- `git switch -` - Switches to the previous branch
- `git clean -xdf` - Deletes all files and directories that aren't tracked as part of the repo. `-x` includes files even if they're ignored by .gitignore. `-d` includes directories. `-f` is force. This is the "nuke everything" command, similar to doing a fresh clone.
- `git reset --soft HEAD~1` - Go back in time by one commit. `--soft` means that the changes from the most recent commit will be staged.
- `git stash push --staged -m "some message"` - Creates a stash just with files that are staged