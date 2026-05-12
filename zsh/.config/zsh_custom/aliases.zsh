#____________________________
# zoxide is "c"
  alias ..='cd ..'  # Back one directory
  alias .2='...'    # Back 2 dirs.
  alias .3='....'   # Back 3 dirs.

#____________________________
  alias vim='nvim'
  alias mkdir='mkdir -p'
  alias rs='rsync -avP'
  alias rscp='rsync -avzP'

  alias vpns='sudo surfshark-vpn status'
  alias vpna='sudo surfshark-vpn attack'
  alias vpnd='sudo surfshark-vpn down'

  alias yayi='yay -Si'

  alias img='tacentview'
  alias open='nautilus'

  alias pacman='sudo pacman'
  alias sysctl='sudo systemctl'
  alias nm='sudo NetworkManager'

# ___________________________
# -X=sort by extension. F=classify type. t=Sort by time. r=reverse sort
  alias ls='lsd -X -tr -F'
  alias la='lsd -X -tr -A -F'
  alias l='lsd -X -ltr -F --permission octal'
  alias ll='lsd -L -X -A -ltr -F --permission octal'
  alias lg='lsd -X -ltr --git -F' # Include git info in lists
  alias lz='lsd -X -ltr -F --total-size --sort size --permission rwx' # Dis
  alias tr='lsd -X -A --tree -F'
  alias tl='lsd -X -A --tree -l --git -F'
  alias tr1='lsd -X -A --tree --depth 1 -F'
  alias tr2='lsd -X -A --tree --depth 2 -F'
  alias tr3='lsd -X -A --tree --depth 3 -F'
