# use bare git repo
alias config='/usr/bin/git --git-dir=/Users/alpal/.cfg/ --work-tree=/Users/alpal'


# set options
setopt extended_glob # extend globbing with wildcards

zle_highlight=('paste:none') # no paste highlighting


# basic tab completion
# autoload -Uz compinit
zstyle ':completion:*' menu select
# zstyle ':completion::complete:lsof:*' menu yes select
zmodload zsh/complist
# compinit
_comp_options+=(globdots) # include hidden files


# add functions
source "$ZDOTDIR/zsh-functions"


# add files
zsh_add_file "zsh-exports"
zsh_add_file "zsh-aliases"
zsh_add_file "zsh-prompt"
zsh_add_file "zsh-vim"
zsh_add_file "zsh-brew"


# add plugins
zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"
zsh_add_plugin "hlissner/zsh-autopair"

