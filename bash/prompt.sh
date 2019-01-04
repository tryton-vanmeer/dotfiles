#
# ~/.bash/prompt.sh
#

# Colors -> "\[$(tput setaf $COLOR)\]"
# [ red, green, yellow, blue, magenta, cyan ]

_prompt_git ()
{
    git status --porcelain -sb &> /dev/null || return

    git_branch="$(git rev-parse --abbrev-ref HEAD 2> /dev/null)"
    if [[ $(git status --porcelain) ]]; then
        git_branch+=" *"
    fi
    [ $(git rev-list origin/$(git rev-parse --abbrev-ref HEAD)..HEAD --count 2> /dev/null) -ne 0 2> /dev/null ] && git_branch+=" ↑"   # Commits ahead of remote
    [ $(git rev-list HEAD..origin/$(git rev-parse --abbrev-ref HEAD) --count 2> /dev/null) -ne 0 2> /dev/null ] && git_branch+=" ↓"   # Commits behind of remote

    echo "\[$(tput setaf 2)\] (${git_branch})"
}

_prompt_python ()
{
    [ -z ${VIRTUAL_ENV+x} ] || echo "\[$(tput setaf 3)\]  "
}

_update_prompt ()
{
    PS1="\[$(tput setaf 1)\] \[$(tput setaf 5)\]\w$(_prompt_git )$(_prompt_python)\n\[$(tput setaf 6)\]$ \[$(tput sgr0)\]"
}
PROMPT_COMMAND="_update_prompt;$PROMPT_COMMAND"
