# Copy all config files to .config
SOURCE_DIR=""
CONFIG_DIR="$HOME/"
cp -r "$HOME/.local/share/arsch/user/*" "$HOME/" > /dev/null

# Copy all root files to /
SOURCE_DIR="$HOME/.local/share/arsch/root"
CONFIG_DIR="/"
sudo cp -r "$SOURCE_DIR"/* "$CONFIG_DIR" > /dev/null