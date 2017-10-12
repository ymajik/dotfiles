if [ -z "$SSH_AUTH_SOCK" ]
then
    eval $(ssh-agent) > /dev/null
      ssh-add -l >/dev/null || alias ssh='ssh-add -l >/dev/null || ssh-add && unalias ssh; ssh'
    fi
