yay -S --noconfirm --needed \
  alacritty man less whois \
  curl unzip inetutils openssh jq \
  nautilus the_silver_searcher \
  sddm qt5-graphicaleffects qt5-quickcontrols2 sddm-sugar-dark \
  brightnessctl \
  vim tig asdf-vm \
  firefox vlc ffmpeg code \
  postman-bin teams-for-linux slack-desktop bruno-bin \
  fastfetch btop htop cowsay asciiquarium \
  spotify \
  > /dev/null

sudo systemctl enable sddm > /dev/null
xdg-settings set default-web-browser firefox.desktop
