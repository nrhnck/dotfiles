if status is-interactive
# Commands to run in interactive sessions can go here
end
starship init fish | source
set -Ux DOTFILES "$HOME/.dotfiles"

function dotfiles
    git --git-dir=$DOTFILES --work-tree=$HOME $argv
end
