# Copy all user files to /
SOURCE_DIR=""
CONFIG_DIR="$HOME/"
cp -r "$HOME/.local/share/arsch/user/." "$HOME/" > /dev/null

# Copy all root files to /
sudo cp -r "$HOME/.local/share/arsch/root/." / > /dev/null

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"