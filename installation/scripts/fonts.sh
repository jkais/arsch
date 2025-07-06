yay -S --noconfirm --needed \
  ttf-dejavu ttf-liberation noto-fonts nerd-fonts-complete noto-fonts-emoji \
  noto-fonts-cjk adobe-source-han-sans-jp-fonts adobe-source-han-serif-jp-fonts \
  ttf-font-awesome ttf-material-design-icons \
  ttf-source-han-sans-jp ttf-source-han-serif-jp fontconfig \
  > /dev/null

fc-cache -fv > /dev/null
