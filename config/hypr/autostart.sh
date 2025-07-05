swayidle -w \
  timeout 300 'hyprlock &' \
  timeout 600 'systemctl suspend' \
  resume 'hyprctl dispatch dpms on'
