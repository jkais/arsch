yay -S --noconfirm --needed \
  alacritty man less whois \
  curl unzip inetutils openssh jq \
  zoxide bat fzf the_silver_searcher \
  sddm qt5-graphicaleffects qt5-quickcontrols2 sddm-sugar-dark \
  brightnessctl \
  vim neovim luarocks tig asdf-vm \
  nautilus firefox vlc ffmpeg code \
  postman-bin teams-for-linux slack-desktop bruno-bin \
  btop htop \
  fastfetch cowsay asciiquarium sl cbonsai \
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
