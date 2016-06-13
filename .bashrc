# add ssh key to agent
eval $(ssh-agent -s)
ssh-add ~/.ssh/id_rsa

# customized prompt
PS1='\[\e[38;5;75m\]\W\[\e[m\] \\$ '

# git
function gitRemotePatch() {
  curl -L $1 | git am -3 -s
}

alias gp=gitRemotePatch
