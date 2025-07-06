echo "Installing Arsch"

pacman -Q git &>/dev/null || sudo pacman -Sy --noconfirm --needed git

rm -rf ~/.local/share/arsch/
git clone https://github.com/jkais/arsch.git ~/.local/share/arsch > /dev/null 2>&1

source ~/.local/share/arsch/installation/install.sh
