set -U Z_CMD "j"

set -x VISUAL “vim”
set -x EDITOR $VISUAL

fish_hybrid_key_bindings 2>/dev/null
fish_vi_cursor

set -x fish_cursor_default block
set -x fish_cursor_insert line
set -x fish_cursor_visual underscore

set -x LANG 'en_US.UTF-8'
set -x LESS '--quit-if-one-screen --ignore-case --status-column --LONG-PROMPT -R --HILITE-UNREAD --tabs=4 --no-init --window=-4'

set -x FZF_DEFAULT_OPTS '--height "40%" --reverse --ansi --border --inline-info --tabstop=4'

source /opt/homebrew/opt/asdf/libexec/asdf.fish

if status is-interactive 
  and not set -q TMUX
      tmux attach -t base || tmux new -s base
    end

