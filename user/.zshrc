export PATH="$HOME/.local/bin:$PATH"

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

zinit ice depth"1"
zinit light romkatv/powerlevel10k
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-syntax-highlighting
zinit light Aloxaf/fzf-tab

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export ZSH="$HOME/.oh-my-zsh"

plugins=(git asdf encode64 fzf qrcode)

source $ZSH/oh-my-zsh.sh

# WireGuard prompt segment
function prompt_wireguard() {
  local wg_ifaces
  wg_ifaces=$(wg show interfaces 2>/dev/null)
  [[ -z "$wg_ifaces" ]] && return

  local icon=""
  p10k segment -t "$icon $wg_ifaces" -f green
}

eval "$(zoxide init zsh)"

source $HOME/.zsh/alias.zsh
