# add ssh key to agent
eval $(ssh-agent -s)
ssh-add ~/.ssh/id_rsa

# customized prompt
PS1='\[\e[38;5;75m\]\W\[\e[m\] \\$ '

# improved ls
alias ll="ls -la"

# git
function gitRemotePatch() {
  curl -L $1 | git am -3 -s
}

function gitRemotePullRequest() {
  git fetch origin +refs/pull/*/head:refs/remotes/origin/pr/*
  git pull --no-rebase --squash origin $1
}

alias gp=gitRemotePatch
alias gpr=gitRemotePullRequest
