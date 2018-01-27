# ndenv 
#

if [ -f /home/${USER}/.ndenv/bin/ndenv ]; then
  export PATH="$HOME/.ndenv/bin:$PATH"
  eval "$(ndenv init -)"
fi
