yay -S --noconfirm --needed \
	man less whois \
	iw bind \
  openconnect wireguard-tools systemd-resolvconf \
  plymouth \
  sddm qt5-graphicaleffects qt5-quickcontrols2 sddm-sugar-dark \
  curl unzip inetutils openssh jq \
  alacritty \
  wl-clipboard cliphist \
  zoxide bat fzf the_silver_searcher gum \
  vim neovim luarocks \
	tig asdf-vm \
  btop htop \
  playerctl pamixer pavucontrol \
  brightnessctl power-profiles-daemon \
  nautilus firefox pinta \
  chromium libreoffice-fresh \
  vlc ffmpeg ffmpegthumbnailer gnome-video-thumbnailer \
  code \
  git-crypt \
  postman-bin teams-for-linux slack-desktop bruno-bin \
  fastfetch cowsay asciiquarium sl cbonsai \
  spotify \
  okular evince \

sudo systemctl enable sddm
sudo systemctl start sddm
sudo systemctl enable NetworkManager
sudo systemctl start NetworkManager
