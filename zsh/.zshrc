#_____________________________________
# Path to your Oh My Zsh installation.
  export ZSH="$HOME/.oh-my-zsh"
  source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
  source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#_____________________________________
# Starship handles most of the appearance. LS_COLORS and LSD are for bonus colours :)
#  export LS_COLORS="$(vivid generate dracula)"

#_____________________________________
# oh-my-zsh update behaviour
  zstyle ':omz:update' mode auto

#_____________________________________
#1. autocd=removes need for 'cd'. #2. extendglob=extra pattern operators like ^, ~, etc. in filename patterns. 
#3. nomatch=print error instead of passing command if no match. #4. notify=Makes background job status 
# messages appear immediately when they change. 
#5. unsetopt beep turns off the terminal bell #6. bindkey -v switches the line editor to vi mode
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
# makes the Oh My Zsh Git prompt stop counting untracked files as “dirty” when 
# it runs git status to build the prompt. This makes repository status check much faster.
  DISABLE_UNTRACKED_FILES_DIRTY="true"

#_____________________________________
# ZSH plugins
 ZSH_CUSTOM=~/.config/zsh_custom
 plugins=(git fzf colored-man-pages tmux zoxide)

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
# Compiler flag so that anything built from source targets your machine’s CPU architecture.
  export ARCHFLAGS="-arch $(uname -m)"
 
#_____________________________________
# Loading my aliases
  [ -f ~/.config/zsh_custom/aliases.zsh ] && source ~/.config/zsh_custom/aliases.zsh

#_____________________________________
# Activating zoxide and changing shortcut to "c". Also starship
  eval "$(zoxide init --cmd c zsh)"
  eval "$(starship init zsh)"
  export STARSHIP_CONFIG=~/.config/starship/starship.toml

