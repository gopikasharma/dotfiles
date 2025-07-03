export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/usr/local/sbin:$HOME/bin:/$PATH"

# use GNU ls if available
command -v gls &>/dev/null && gls --version | grep -q "GNU coreutils" && \
  alias ls="gls -GhF --color=auto --group-directories-first" || \
  alias ls="ls -GhF --color=auto"
alias grep="grep --color=auto"

# Enable color support
autoload -U colors && colors

# Setting my prompt
export PROMPT="%F{green}%n@%m%f:%F{blue}%~%f %# "

autoload -Uz vcs_info compinit && compinit

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' 'r:|[._-]=* r:|=*'
zstyle ":completion:*" list-dirs-first truee
