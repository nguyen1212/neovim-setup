# neovim-setup

## youtube tutorial
[lsp-from-scratch](https://www.youtube.com/watch?v=w7i4amO_zaE&ab_channel=ThePrimeagen)

## install neovim 
```
brew install neovim
```

## install gopls
```
brew install gopls
```

## setup directory
- create directory `~/.config/nvim`
- copy all files in this repo to this directory

## search engine (optional)
```
brew install rg
```

## package manager
- install the repo
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
- use any new package in `packer.lua` and `:PackerSync` to sync new package.

## terminal
- install `iterm2`
- install `tmux`

## font
- install `NERDfont`
```
brew tap homebrew/cask-fonts
brew install font-hack-nerd-font
```
- change font of iterm2 to nerd font
