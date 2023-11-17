#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Colors
GREEN="\[\e[32m\]"
YELLOW="\[\e[33m\]"
MAGENTA="\[\e[35m\]"
ENDCOLOR="\[\e[0m\]"

# get current branch in git repo
function parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/\1/p'
}
export PS1="[$MAGENTA\u@\h$ENDCOLOR]-[${GREEN}\w${ENDCOLOR}]-[${YELLOW}\$(parse_git_branch)${ENDCOLOR}] -> "
