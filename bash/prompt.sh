#
# ~/.bash/prompt.sh
#

# Colors -> "\[$(tput setaf $COLOR)\]"
# [ red, green, yellow, blue, magenta, cyan ]

COLOR_RED="\[$(tput setaf 1)\]"
COLOR_GREEN="\[$(tput setaf 2)\]"
COLOR_YELLOW="\[$(tput setaf 3)\]"
COLOR_BLUE="\[$(tput setaf 4)\]"
COLOR_MAGENTA="\[$(tput setaf 5)\]"
COLOR_CYAN="\[$(tput setaf 6)\]"
COLOR_RESET="\[$(tput sgr0)\]"

_prompt_git ()
{
    git status --porcelain -sb &> /dev/null || return

    git_branch="$(git rev-parse --abbrev-ref HEAD 2> /dev/null)"
    if [[ $(git status --porcelain) ]]; then
        git_branch+=" *"
    fi
    [ $(git rev-list origin/$(git rev-parse --abbrev-ref HEAD)..HEAD --count 2> /dev/null) -ne 0 2> /dev/null ] && git_branch+=" ↑"   # Commits ahead of remote
    [ $(git rev-list HEAD..origin/$(git rev-parse --abbrev-ref HEAD) --count 2> /dev/null) -ne 0 2> /dev/null ] && git_branch+=" ↓"   # Commits behind of remote

    echo "${COLOR_CYAN}-[${COLOR_GREEN}${git_branch}${COLOR_CYAN}]${COLOR_RESET}"
}

_prompt_python ()
{
    if [[ ! -z ${VIRTUAL_ENV+x} ]]; then
        venv_path=$(basename ${VIRTUAL_ENV})
        echo "${COLOR_CYAN}-[${COLOR_YELLOW}${venv_path}${COLOR_CYAN}]${COLOR_RESET}"
    fi
}

_prompt_ssh ()
{
    if [[ ! -z ${SSH_TTY+x} ]]; then
        echo "${COLOR_CYAN}-[${COLOR_RED}SSH${COLOR_CYAN}]${COLOR_RESET}"
    fi
}

_update_prompt ()
{
    PS1="${COLOR_CYAN}┌[${COLOR_MAGENTA}\w${COLOR_CYAN}]$(_prompt_ssh)$(_prompt_git)$(_prompt_python)\n${COLOR_CYAN}└$ ${COLOR_RESET}"
}
PROMPT_COMMAND="_update_prompt;$PROMPT_COMMAND"
