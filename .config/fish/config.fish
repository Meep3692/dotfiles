if status is-interactive
    # Commands to run in interactive sessions can go here
end

oh-my-posh init fish --config ~/.cache/oh-my-posh/themes/aliens.omp.json | source

alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

    export GUIX_LOCPATH="$HOME/.guix-profile/lib/locale"