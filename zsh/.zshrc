# Enable command completion
autoload -Uz compinit
compinit

# Enable better menu-based completion
zstyle ':completion:*' menu select
zstyle ':completion:*' group-name ''
zstyle ':completion:*:descriptions' format '%F{yellow}%B-- %d --%b%f'

# History settings (so suggestions work well)
HISTSIZE=5000
SAVEHIST=5000
HISTFILE=~/.zsh_history

# Case-insensitive completion (ls foo = ls Foo)
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# Prompt (simple)
PROMPT='%F{green}%n@%m%f %F{blue}%~%f %# '

# Plugins
# 1) Syntax highlighting
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null || \
  source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# 2) Autosuggestions
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null || \
  source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

