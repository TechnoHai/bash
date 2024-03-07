#!/bin/bash
# This script installs various utilities and tools on a Linux system.

# Install 'exa', a modern replacement for 'ls' with more features.
sudo apt install exa -y

# Change the default 'ls' command to 'exa' with additional options for better output.
alias ls='exa -lha'

# Add the alias permanently to .zshrc for persistent use across sessions.
echo "alias ls='exa -lha'" >> ~/.zshrc

# Install 'fish', an advanced and user-friendly command line shell.
apt install fish -y

# Install system monitoring tools
sudo apt install htop -y # Interactive process viewer.
sudo apt install exa -y # Modern replacement for 'ls', installed again for redundancy.
sudo apt install git -y # Version control system, essential for developers.
sudo apt install btop -y # Resource monitor that shows usage and stats for processor, memory, disks, network, and processes.

# Install Homebrew, a package manager for macOS (or Linux), to manage additional software not included in the default repositories.
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# Configure Homebrew in .zshrc for persistent use.
(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /home/hai/.zshrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Install 'atuin', a command history manager for easier retrieval of past commands.
brew install atuin
# Commented out: Registration and key generation for 'atuin'.
#atuin register -u hai -e hai.sarusi@gmail.com
#atuin key
# Import existing shell history into 'atuin'.
atuin import auto

# Install 'dust', a more intuitive version of 'du', for checking disk usage.
brew install dust

# Install 'bat', an alternative to 'cat' with syntax highlighting and Git integration.
brew install bat

# Installs 'tldr', a simplified and community-driven man pages with practical examples
brew install tldr

#nstall the TypeScript Language Server using Homebrew 
brew install typescript-language-server

# Install 'zsh', a shell designed for interactive use and a powerful scripting language.
sudo apt install zsh -y
# Install zsh4humans for a turnkey zsh configuration, enhancing the shell experience.
sh -c "$(curl -fsSL https://raw.githubusercontent.com/romkatv/zsh4humans/v5/install)"

# Install Neovim with AstroNvim, a pre-configured setup for an enhanced Vim experience.
sudo snap install nvim  --classic -y
#git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim 

apt install ncdu -y # Disk usage analyzer that shows disk usage in a graphical interface.

sudo apt update && sudo apt install nala -y # nala is a fast alternative to apt and apt-get

# Clones the repository containing bash scripts and copies backup zsh configuration files to the home directory.
mkdir -p ~/git
cd ~/git
git clone https://github.com/TechnoHai/bash.git
cp /bash/zsh_bacup_files/* ~/

