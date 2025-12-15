# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
# End of lines configured by zsh-newuser-install
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Faster suggestions
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#585b70,bold"  # Gray like Catppuccin
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_USE_ASYNC=true
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
