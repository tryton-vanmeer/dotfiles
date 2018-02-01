#
# ~/.bash/prompt.sh
#

# Colors -> "\[$(tput setaf $COLOR)\]"
# [ red, green, yellow, blue, magenta, cyan ]

_prompt_git ()
{
    git status --porcelain -sb &> /dev/null || return

    git_branch="$(git rev-parse --abbrev-ref HEAD 2> /dev/null)"
    git status --porcelain | grep "??" &> /dev/null && git_branch+=" " # New Files
    git status --porcelain | grep "M" &> /dev/null && git_branch+=" "  # Commits
    [ $(git rev-list origin/$(git rev-parse --abbrev-ref HEAD)..HEAD --count 2> /dev/null) -ne 0 2> /dev/null ] && git_branch+=" "   # Commits ahead of remote
    [ $(git rev-list HEAD..origin/$(git rev-parse --abbrev-ref HEAD) --count 2> /dev/null) -ne 0 2> /dev/null ] && git_branch+=" "   # Commits behind of remote

    echo "\[$(tput setaf 2)\][ ${git_branch} ]"
}

_prompt_python ()
{
    [ -z ${VIRTUAL_ENV+x} ] || echo "\[$(tput setaf 3)\]"
}

_update_prompt ()
{
    PS1="┌\[$(tput setaf 6)\]  \w $(_prompt_python) $(_prompt_git )\[$(tput sgr0)\]\n└>$ "
}
PROMPT_COMMAND="_update_prompt;$PROMPT_COMMAND"
