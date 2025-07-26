yay -S --noconfirm --needed \
  ttf-dejavu ttf-liberation noto-fonts noto-fonts-emoji \
  ttf-font-awesome ttf-material-design-icons \
  noto-fonts-cjk adobe-source-han-sans-jp-fonts adobe-source-han-serif-jp-fonts \
  ttf-meslo-nerd-font-powerlevel10k \
  fontconfig \
  > /dev/null

fc-cache -fv > /dev/null