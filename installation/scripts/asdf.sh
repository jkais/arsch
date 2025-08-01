/usr/bin/asdf plugin add golang
/usr/bin/asdf install golang latest
/usr/bin/asdf set -u golang latest

/usr/bin/asdf plugin add nodejs
#/usr/bin/asdf install nodejs latest
/usr/bin/asdf set -u nodejs latest

/usr/bin/asdf plugin add ruby
/usr/bin/asdf install ruby latest
/usr/bin/asdf set -u ruby latest

/usr/bin/asdf plugin add python
/usr/bin/asdf install python latest
/usr/bin/asdf set -u python latest

# Install LSPs for Neovim
$HOME/.asdf/shims/npm install -g typescript typescript-language-server
$HOME/.asdf/shims/gem install solargraph
$HOME/.asdf/shims/go install golang.org/x/tools/gopls@latest

