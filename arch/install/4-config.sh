if [[ -n "${USER_NAME//[[:space:]]/}" ]]; then
  git config --global user.name "$USER_NAME"
fi

if [[ -n "${USER_EMAIL//[[:space:]]/}" ]]; then
  git config --global user.email "$USER_EMAIL"
fi

# Copy all config files to .config
SOURCE_DIR="~/.local/share/arsch/config"
CONFIG_DIR="~/.config"
echo "Copying .config files..."
cp -rv "$SOURCE_DIR"/* "$CONFIG_DIR"
exit
