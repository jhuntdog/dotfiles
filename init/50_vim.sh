# Backups, swaps and undos are stored here.
#mkdir -p $DOTFILES/caches/vim
mkdir -p ~/.dotfiles/caches/vim

# Download Vim plugins.
if [[ "$(type -P vim)" ]]; then
  vim +PlugUpgrade +PlugUpdate +qall
fi
