#____________________________
# zoxide is "c"
  alias z='cd ..'
  alias zz='...'
  alias zzz='....'
  alias ..='cd ..'

#____________________________
  alias vim='nvim'
  alias mkdir='mkdir -p'

#____________________________
# Image related
  alias icat='kitty +kitten icat'
  alias img='tacentview'
  alias q='qview'

# ___________________________ 
# -X=sort by extension. F=classify type. t=Sort by time. r=reverse sort
  alias ls='lsd -X -tr -F'
  alias la='lsd -X -tr -A -F'
  alias l='lsd -X -l -tr -F' 
  alias ll='lsd -X -A -ltr -F'
  alias lg='lsd -X -ltr --git -F' 
  alias tr='lsd -X -A --tree -F'
  alias tr1='lsd -X -A --tree --depth 1 -F'
  alias tr2='lsd -X -A --tree --depth 2 -F'
