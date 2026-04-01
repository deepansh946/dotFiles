#!/bin/bash

echo "🚀 Installing Homebrew packages..."

brew tap mongodb/brew

# Core packages (filtered important ones)

packages=(
  git
  node
  pnpm
  python@3.12
  neovim
  tmux
  htop
  btop
  lazygit
  ripgrep
  fd
  fzf
  tree-sitter
  openssl@3
  readline
  sqlite
  zsh
  zsh-syntax-highlighting
  docker-compose
  mongodb-community
  mongodb-database-tools
  mongosh
  redis
  mysql
  postgresql@16
  openjdk
  php
  curl
  wget
  tig
)

for pkg in "${packages[@]}"; do
echo "📦 Installing $pkg"
brew install $pkg
done

echo "🎉 Done!"

