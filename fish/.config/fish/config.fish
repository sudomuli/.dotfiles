if status is-interactive
    # Commands to run in interactive sessions can go here
end

eval (/opt/homebrew/bin/brew shellenv)

# pnpm
set -gx PNPM_HOME /Users/samulivalimaki/Library/pnpm

# case ":$PATH:" in
#   *":$PNPM_HOME:"*) ;;
#   *) export PATH="$PNPM_HOME:$PATH" 
# ;
# esac

if not contains $PNPM_HOME $PATH
    fish_add_path $PNPM_HOME
end

# pnpm end

# alias for current working project
alias ava="cd ~/DEV/ava-stack/ui"

# alias for Kitty terminal ssh
alias s="kitten ssh"

# Connect to Pi over SSH
alias pi="kitten ssh pi@192.168.0.47"

alias mulibuntu="ssh samuli@135.181.98.237"

# bun completions
# [ -s "/Users/samulivalimaki/.bun/_bun" ] && source "/Users/samulivalimaki/.bun/_bun"

# bun
set -gx BUN_INSTALL "$HOME/.bun"
fish_add_path "$BUN_INSTALL/bin"

# # STARSHIP
# eval "$(starship init zsh)"

# ZSH AUTOCOMPLETION CONFIG
# bindkey '^Y' autosuggest-accept

# use fzf
# source <(fzf --zsh)

# NVM
set -gx NVM_DIR "$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# GO
set -gx GOPATH "$HOME/go"
fish_add_path /usr/local/go/bin $GOPATH/bin
# PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
