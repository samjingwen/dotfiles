# Dotfiles

## Setup

Clone the repository:

```sh
git clone https://github.com/samjingwen/dotfiles.git ~/code/dotfiles
```

## Git

If Git configuration files already exist, back them up first:

```sh
mv ~/.gitconfig ~/.gitconfig.backup
mv ~/.gitignore ~/.gitignore.backup
```

Symlink this repository's Git configuration into place:

```sh
ln -s ~/code/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/code/dotfiles/.gitignore_global ~/.gitignore
```

Set the machine-specific identity outside the repository:

```sh
git config --file ~/.gitconfig.local user.name "Your Name"
git config --file ~/.gitconfig.local user.email "you@example.com"
chmod 600 ~/.gitconfig.local
```

Verify the symlinks, identity, and config origins:

```sh
ls -l ~/.gitconfig ~/.gitignore
git config user.name
git config user.email
git config --show-origin --list
```

The tracked config includes `~/.gitconfig.local`. Commands using `--global`
do not follow includes unless `--includes` is also supplied, for example:

```sh
git config --global --includes user.name
```

## Neovim

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
