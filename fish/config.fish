abbr -a vim nvim
abbr -a e nvim
abbr -a g git
abbr -a lg lazygit
abbr -a gp git push
abbr -a spaces "du -hsx * | sort -h"
abbr -a space "du -hx * | sort -h"

abbr -a rg1 "rg --max-depth=1"
abbr -a rgf "rg --files | rg"

if command -v lsd > /dev/null
  abbr -a ls 'lsd'
  abbr -a ll 'lsd -l'
  abbr -a lll 'lsd -la'
else
  abbr -a ll 'ls -l'
  abbr -a lll 'ls -la'
end

setenv EDITOR nvim

function ta 
  tmux a -t $argv || tmux new -s $argv
end

abbr -a tl 'tmux ls'
set GOPATH /home/$USER/go
set PATH $HOME/.local/bin $GOPATH/bin /usr/local/bin $PATH
abbr -a l 'yy'
abbr -a cd 'z'

set fish_greeting

fish_vi_key_bindings
starship init fish | source
zoxide init fish | source


# TokyoNight Color Palette
set -l foreground c0caf5
set -l selection 33467c
set -l comment 565f89
set -l red f7768e
set -l orange ff9e64
set -l yellow e0af68
set -l green 9ece6a
set -l purple 9d7cd8
set -l cyan 7dcfff
set -l pink bb9af7

# Syntax Highlighting Colors
set -g fish_color_normal $foreground
set -g fish_color_command $cyan
set -g fish_color_keyword $pink
set -g fish_color_quote $yellow
set -g fish_color_redirection $foreground
set -g fish_color_end $orange
set -g fish_color_error $red
set -g fish_color_param $purple
set -g fish_color_comment $comment
set -g fish_color_selection --background=$selection
set -g fish_color_search_match --background=$selection
set -g fish_color_operator $green
set -g fish_color_escape $pink
set -g fish_color_autosuggestion $comment

# Completion Pager Colors
set -g fish_pager_color_progress $comment
set -g fish_pager_color_prefix $cyan
set -g fish_pager_color_completion $foreground
set -g fish_pager_color_description $comment
set -g fish_pager_color_selected_background --background=$selection
