#!/bin/bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

PACKAGES=(
  coreutils
  node
  yarn
  p7zip
  jq
  djview4
  rclone
  zsh
  wget
  unrar
  bat
  ansible
  tmux
  fzf
  imagemagick
  neovim
  asciidoc
  clog
  fpp
  gor
  htop
)

for package in ${PACKAGES[@]};do
  brew install $package
done

brew tap homebrew/cask-fonts

PACKAGES=(
  font-jetbrainsmono-nerd-font
  docker
  1password
  google-chrome
  firefox
  iterm2
  slack
  telegram
  jetbrains-toolbox
  microsoft-teams
  postman
  visual-studio-code
  vlc
  notion
  transmission
  skype
  vagrant
  virtualbox
  wireshark
  teamviewer
)

for package in ${PACKAGES[@]};do
  brew cask install $package
done

