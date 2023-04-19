# Load Powerlevel10k theme
source $(brew --prefix)/opt/powerlevel10k/powerlevel10k.zsh-theme

# Load zsh-autosuggestions plugin
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Load zsh-syntax-highlighting plugin
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Powerlevel10k theme options
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status history time)
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX='▶ '
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=''

# Customize the prompt
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_LEFT_PROMPT_FIRST_SEGMENT_START="%F{white}n@%F{white}m "
POWERLEVEL9K_LEFT_PROMPT_LAST_SEGMENT_END="%F{magenta} "
POWERLEVEL9K_RIGHT_PROMPT_FIRST_SEGMENT_START="%F{magenta}%F{blue}"
POWERLEVEL9K_RIGHT_PROMPT_LAST_SEGMENT_END="%F{magenta}%F{white}"

# Customize the typing effect
function type_effect() {
    local text="$1"
    for ((i=0; i<${#text}; i++)); do
        printf "${text:$i:1}"
        sleep 0.05
    done
    printf "\n"
}

# Customize the mouse hover effect
function mouse_hover_effect() {
    echo -n "${yellow}"
    read -s -t 0.1
    if [[ $? -eq 0 ]]; then
        echo -n "${green}"
    fi
}

# Customize the command execution time reporting
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=10
POWERLEVEL9K_COMMAND_EXECUTION_TIME_PRECISION=0

# Customize the zsh history options
HISTSIZE=10000
SAVEHIST=10000

# Set background image
set_background() {
    if [[ -f "$1" ]]; then
        hsetroot -cover "$1" &> /dev/null
    else
        echo "Error: File not found."
    fi
}

# Load the zsh-autopair plugin
source ~/.zsh/zsh-autopair/zsh-autopair.plugin.zsh

# Customize the effect
function _autopair_hook() {
    if [[ $BUFFER =~ '^.*\w$' ]]; then
        local -a _colors=("$color_cyan" "$color_green" "$color_yellow" "$color_magenta" "$color_red" "$color_blue")
        local _opacity
        for _opacity in {20..100..20}; do
            printf "\e[38;5;246m\e[48;5;242m%k%{$(tput bold)%}%{${_colors[RANDOM % 6]}%}$(echo $BUFFER | tail -c 2)\e[0m"
            sleep 0.01
            printf "\r$(printf %$(echo $BUFFER | wc -c)s | tr ' ' '\b')\r"
            printf "${BUFFER%?}"
            if [[ $_opacity -ne 100 ]]; then
                printf "\e[38;5;246m\e[48;5;242m%k%{$(tput bold)%}%{${_colors[RANDOM % 6]}%}$(echo $BUFFER | tail -c 2)\e[38;5;${_opacity}m\e[0m"
                sleep 0.01
                printf "\r$(printf %$(echo $BUFFER | wc -c)s | tr ' ' '\b')\r"
                printf "${BUFFER%?}"
            fi
/n
