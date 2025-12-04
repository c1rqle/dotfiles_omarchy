# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

#_____________________________________
# Path to your Oh My Zsh installation.
  export ZSH="$HOME/.oh-my-zsh"
  source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
  source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#_____________________________________
# Starship handles most of the appearance. LS_COLORS and LSD are for bonus colours :)
  export LS_COLORS="$(vivid generate tokyonight-night)"

#_____________________________________
  setopt autocd extendedglob nomatch notify
  unsetopt beep
  bindkey -v

#_____________________________________
  zstyle ':completion:*' completer _oldlist _expand _complete _match _correct _approximate _prefix
  zstyle ':completion:*' max-errors 99 not-numeric
  zstyle :compinstall filename '/home/tb/.zshrc'
  zstyle ':completion:*' match-original both
  zstyle ':completion:*' old-menu false
  zstyle ':completion:*' completions 1
  zstyle ':completion:*' substitute 1
  zstyle ':completion:*' word true
  zstyle ':completion:*' glob 1
  autoload -Uz compinit
  compinit

#_____________________________________
# oh-my-zsh update behaviour
  zstyle ':omz:update' mode reminder

#_____________________________________
# Disable autocorrect. I find it incredibly annoying.
  ENABLE_CORRECTION="false"

#_____________________________________
# This makes repository status check much faster.
  DISABLE_UNTRACKED_FILES_DIRTY="true"

#_____________________________________
# ZSH plugins
 ZSH_CUSTOM=~/.config/zsh_custom
 plugins=(git fzf colored-man-pages tmux zoxide)

#_____________________________________
# Loading my aliases
  [ -f ~/.config/zsh_custom/aliases.zsh ] && source ~/.config/zsh_custom/aliases.zsh

#_____________________________________
 source $ZSH/oh-my-zsh.sh
 export MANPATH="/usr/local/man:$MANPATH"

#_____________________________________
# Preferred editor for local and remote sessions
  if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
  else
    export EDITOR='nvim'
  fi

#_____________________________________
# Compilation flags
  export ARCHFLAGS="-arch $(uname -m)"
 
#_____________________________________
# Activating zoxide and changing shortcut to "c"
  eval "$(zoxide init --cmd c zsh)"
  eval "$(starship init zsh)"
