#!/bin/bash
#exa modern ls
sudo apt install exa -y
#change ls to exa by alias
alias ls='exa -lha'
#add the alias permanently to .zshrc for persistent use across sessions
echo "alias ls='exa -lha'" >> ~/.zshrc
#install fish shell for a more advanced command line experience
apt install fish -y

# Install system monitoring tools
sudo apt install htop -y # Interactive process viewer
sudo apt install exa -y # Modern replacement for 'ls'
sudo apt install git -y # Version control system
sudo apt install btop -y # Resource monitor that shows usage and stats for processor, memory, disks, network, and processes

#install homebrew, the missing package manager for macOS (or Linux)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

#install atuin a command history manager for easier retrieval of past commands
brew install atuin
atuin register -u hai -e hai.sarusi@gmail.com # Register user for atuin
atuin key # Generate and display atuin encryption key
#shop paddle disagree position divorce blast december index rhythm upgrade olive ribbon deer page hamster manual tree struggle often chicken envelope humble captain payment

#install zsh, a shell designed for interactive use, although it is also a powerful scripting language
sudo apt install zsh -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/romkatv/zsh4humans/v5/install)" # Install zsh4humans for a turnkey configuration

# Install Neovim with AstroNvim configuration for an enhanced Vim experience
sudo snap install nvim  --classic -y
git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim 
