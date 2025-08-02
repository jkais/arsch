if [ "${DEBUG:-0}" -eq 1 ]; then
  echo "debug is on."
  set -x
fi

echo "installing..."

sudo pacman -Syu --noconfirm
sudo pacman -Sy --noconfirm --needed git > /dev/null

rm -rf ~/.local/share/arsch/
git clone https://github.com/jkais/arsch.git ~/.local/share/arsch > /dev/null 2>&1

source ~/.local/share/arsch/installation/install.sh
