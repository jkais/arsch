sudo pacman -S --needed --noconfirm base-devel &> /dev/null

if ! command -v yay &>/dev/null; then
  git clone https://aur.archlinux.org/yay-bin.git
  cd yay-bin
  makepkg -si --noconfirm > /dev/null
  cd ~
  rm -rf yay-bin 
fi
