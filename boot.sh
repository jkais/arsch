echo "HERE WE GO!"

# pacman -Q git &>/dev/null || sudo pacman -Sy --noconfirm --needed git

rm -rf ~/.local/share/arsch/
git clone https://github.com/jkais/arsch.git ~/.local/share/arsch >/dev/null

source ~/.local/share/arsch/arch/install.sh
