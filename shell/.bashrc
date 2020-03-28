# check if this is a login shell
[ "$0" = "-bash" ] && export LOGIN_BASH=1

# run bash_profile if this is not a login shell
[ -z "$LOGIN_BASH" ] && source ~/.bash_profile

# load shared shell configuration
source ~/.shrc

# History
export HISTFILE="$HOME/.bash_history"
export HISTCONTROL="ignoredups"
export PROMPT_COMMAND="history -a"
export HISTIGNORE="&:ls:[bf]g:exit"

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
