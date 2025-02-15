
export EDITOR='nvim'

eval "$(/opt/homebrew/bin/brew shellenv)"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

eval "$(starship init zsh)"

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Use eza instead of ls
alias ls='eza --icons --group-directories-first --color=auto'
alias ll='eza -l --icons --group-directories-first --color=auto'
alias la='eza -la --icons --group-directories-first --color=auto'
export EZA_THEME="$HOME/.config/eza/theme.yml"
export CXXFLAGS="-std=c++20"
alias g++="g++ -std=c++20"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/none/.lmstudio/bin"
