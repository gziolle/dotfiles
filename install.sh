#!/bin/zsh

#install xcode cli tools
xcode-select --install

#install ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)”;

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)”;

# export homebrew env var
echo "export PATH=/opt/homebrew/bin:$PATH" >> ~/.zshrc
source ~/.zshrc

# install neovim
brew install neovim

# install java
brew install openjdk@11

#symlink system wrappers to java
sudo ln -sfn /opt/homebrew/opt/openjdk@11/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk-11.jdk

# export java to PATH
echo 'export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"' >> ~/.zshrc

# install dev apps
brew install --cask visual-studio-code flipper android-studio postman stats rectangle spotify firefox slack zoom;

# install watchman
brew install watchman;

# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
source ~/.zshrc

# nvm - install versions
nvm install lts;
nvm install lts/erbium;
nvm install lts/fermium;

# rvm - install 
curl -L https://get.rvm.io | bash -s stable;

# add rvm to path and source it
echo "export "HOME/.rvm/bin:$PATH"" >> ~/.zshrc;
source ~/.zshrc;

# export necessary flags
export warnflags=-Wno-error=implicit-function-declaration

# rvm install ruby-2.6.5
rvm install --default 2.6.5;
