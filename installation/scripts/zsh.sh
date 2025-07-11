yay -S --noconfirm --needed zsh > /dev/null

# install oh my zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  RUNZSH=no CHSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

if [ -n "$ZSH_VERSION" ]; then
  if [ -f "$HOME/.zshrc" ]; then
    source "$HOME/.zshrc"
  fi
fi

# install powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"