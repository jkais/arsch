# Copy all user files to /
cp -r "$HOME/.local/share/arsch/user/." "$HOME/" > /dev/null

# Copy all root files to /
sudo cp -r "$HOME/.local/share/arsch/root/." / > /dev/null

POWERLEVEL10K_DIR="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
echo $POWERLEVEL10K_DIR

if [ ! -d "$POWERLEVEL10K_DIR" ]; then
  echo "YO!"
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$POWERLEVEL10K_DIR" > /dev/null
fi