# Bash Aliases and Commands
`alias deletelocalgitbranches="git branch --merged develop | grep -v -e 'develop$' -e 'staging$' -e 'master$' | xargs git branch -d"`
`source <(curl -ks https://raw.githubusercontent.com/StephenLingham/notes/main/code/kubernetes-aliases)`
