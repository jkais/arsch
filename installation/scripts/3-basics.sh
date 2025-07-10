yay -S --noconfirm --needed \
  alacritty man less whois \
  curl unzip inetutils openssh jq \
  zoxide bat \
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

/usr/bin/asdf plugin add nodejs
/usr/bin/asdf install nodejs latest
/usr/bin/asdf set -u nodejs latest

/usr/bin/asdf plugin add ruby
/usr/bin/asdf install ruby latest
/usr/bin/asdf set -u ruby latest
