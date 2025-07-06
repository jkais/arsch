yay -S --noconfirm --needed \
  ttf-dejavu ttf-liberation noto-fonts noto-fonts-emoji \
  ttf-font-awesome ttf-material-design-icons \
  noto-fonts-cjk adobe-source-han-sans-jp-fonts adobe-source-han-serif-jp-fonts \
  fontconfig \
  > /dev/null

fc-cache -fv > /dev/null