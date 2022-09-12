# Bash Aliases
`alias deletelocalgitbranches="git branch --merged develop | grep -v -e 'develop$' -e 'staging$' -e 'master$' | xargs git branch -d"`
