# Copy all config files to .config
SOURCE_DIR="$HOME/.local/share/arsch/config"
CONFIG_DIR="$HOME/.config"
cp -r "$SOURCE_DIR"/* "$CONFIG_DIR" > /dev/null

# Copy all root files to /
SOURCE_DIR="$HOME/.local/share/arsch/root"
CONFIG_DIR="/"
sudo cp -r "$SOURCE_DIR"/* "$CONFIG_DIR" > /dev/null