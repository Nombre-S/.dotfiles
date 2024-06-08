#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Colors
RED="\[\e[31m\]"
GREEN="\[\e[32m\]"
YELLOW="\[\e[33m\]"
MAGENTA="\[\e[35m\]"
ENDCOLOR="\[\e[0m\]"

# get current branch in git repo
function parse_git_branch() {
    local branch_name=$(git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/\1/p')
    if [ -n "$branch_name" ]; then

        local status=$(git status -s 2> /dev/null)
        if [[ -n "$status" ]]; then
            echo -ne "[\e[0;31m$branch_name\e[m] -" 
        else
            echo -ne "[\e[0;33m$branch_name\e[m] -"
        fi
    else
        echo ""
    fi
}

export PS1="[$MAGENTA\u@\h$ENDCOLOR]-[${GREEN}\w${ENDCOLOR}]-\$(parse_git_branch)> "

# Path to local enviroment variables
export PATH="${PATH}:/home/.config/environment.d/"
