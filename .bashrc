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
  git fetch origin +refs/pull/$1/head:refs/remotes/origin/pr/$1
  git pull --no-rebase --squash origin pull/$1/head
}

alias gp=gitRemotePatch
alias gpr=gitRemotePullRequest
