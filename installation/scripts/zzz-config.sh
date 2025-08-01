# Copy all user files to /
cp -r "$HOME/.local/share/arsch/user/." "$HOME/" > /dev/null

# Copy all root files to /
sudo cp -r "$HOME/.local/share/arsch/root/." / > /dev/null

# Show Pacman easter egg in pacman
sudo grep -q '^ILoveCandy$' /etc/pacman.conf || sudo sed -i '/^\[options\]/a ILoveCandy' /etc/pacman.conf
