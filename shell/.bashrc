source ~/.profile

HISTIGNORE=' *:&:?:??:clear:history:exit:cd*:ls*:[ \t]*'

# fzf
source /usr/share/fzf/key-bindings.bash
source /usr/share/fzf/completion.bash

if command -v wt >/dev/null 2>&1; then eval "$(command wt config shell init bash)"; fi
