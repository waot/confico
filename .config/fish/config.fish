if status is-interactive
    # Commands to run in interactive sessions can go here
end

function postexec_test --on-event fish_postexec
   echo
end

set -gx EDITOR nvim
set -gx SHELL /usr/bin/fish
set -U fish_greeting

# BACKUP

alias config='/usr/bin/git --git-dir=/home/wout/confico/ --work-tree=/home/wout/'

# ALIAS

alias n='nvim'
alias x='xlsclients'
alias c='clear'
alias clear='clear' 
# && echo ""'

alias fishc='nvim /home/wout/.config/fish/config.fish'
alias nvimc='nvim /home/wout/.config/nvim/init.vim'
alias swayc='nvim /home/wout/.config/sway/config'
alias makoc='nvim /home/wout/.config/mako/config'
alias wayc='nvim /home/wout/.config/waybar/config.jsonc'
alias ways='nvim /home/wout/.config/waybar/style.css'

alias bf='/home/wout/bf.sh'

# alias wout='echo "  wout"'
alias balin='echo "oh, that\'s so balin.."'
