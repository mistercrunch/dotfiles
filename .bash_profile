source '/Users/mbeauchemin/src/blessclient/lyftprofile' # bless ssh alias

export PYTHONPATH=~/pythonpath
export EDITOR=vim
if [ -f "/usr/local/opt/bash-git-prompt/share/gitprompt.sh" ]; then
__GIT_PROMPT_DIR="/usr/local/opt/bash-git-prompt/share"
source "/usr/local/opt/bash-git-prompt/share/gitprompt.sh"
fi

export PATH=/usr/local/bin:$PATH

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
