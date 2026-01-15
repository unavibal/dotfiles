# --------------------------------------------------------------------------------------
# general
# --------------------------------------------------------------------------------------
set fish_greeting ""

# --------------------------------------------------------------------------------------
# vim keybindings
# --------------------------------------------------------------------------------------
set -g fish_cursor_insert block

# --------------------------------------------------------------------------------------
# aliases
# --------------------------------------------------------------------------------------
alias n="nvim"
alias lg="lazygit"
alias ls="eza --color"
alias ll="eza -la --color"
alias cat="bat"

# --------------------------------------------------------------------------------------
# env/path vars
# --------------------------------------------------------------------------------------
set -gx HOMEBREW_PREFIX /opt/homebrew
set -gx HOMEBREW_CELLAR "$HOMEBREW_PREFIX/Cellar"
set -gx HOMEBREW_REPOSITORY "$HOMEBREW_PREFIX/homebrew"

fish_add_path "$HOMEBREW_PREFIX/bin"
fish_add_path "$HOME/.local/bin/"
fish_add_path /opt/podman/bin

set -gx EDITOR nvim
set -gx LS_COLORS (vivid generate gruvbox-light-soft)

# --------------------------------------------------------------------------------------
# tools
# --------------------------------------------------------------------------------------
zoxide init fish | source
direnv hook fish | source
starship init fish | source
atuin init fish | source

pyenv init - fish | source
status --is-interactive; and pyenv virtualenv-init - | source

# --------------------------------------------------------------------------------------
# tools
# --------------------------------------------------------------------------------------

bind ƒ nextd-or-forward-word
