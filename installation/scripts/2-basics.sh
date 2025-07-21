yay -S --noconfirm --needed \
  alacritty man less whois \
  okular \
  plymouth \
  curl unzip inetutils openssh jq \
  zoxide bat fzf the_silver_searcher gum \
  sddm qt5-graphicaleffects qt5-quickcontrols2 sddm-sugar-dark \
  playerctl pamixer pavucontrol \
  brightnessctl power-profiles-daemon \
  vim neovim luarocks tig asdf-vm \
  nautilus firefox vlc ffmpeg code \
  postman-bin teams-for-linux slack-desktop bruno-bin \
  btop htop \
  fastfetch cowsay asciiquarium sl cbonsai \
  openconnect \
  spotify \
  > /dev/null

sudo systemctl enable sddm > /dev/null
xdg-settings set default-web-browser firefox.desktop
