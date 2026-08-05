# Dotfiles

## Neovim

Clone the repository:

```sh
git clone https://github.com/samjingwen/dotfiles.git ~/code/dotfiles
```

Create the Neovim configuration directory:

```sh
mkdir -p ~/.config
```

If a Neovim configuration already exists, back it up first:

```sh
mv ~/.config/nvim ~/.config/nvim.backup
```

Symlink this repository's Neovim configuration into place:

```sh
ln -s ~/code/dotfiles/.config/nvim ~/.config/nvim
```

Verify the symlink and start Neovim:

```sh
ls -l ~/.config/nvim
nvim
```

LazyVim and its plugins will be installed automatically on the first launch.
