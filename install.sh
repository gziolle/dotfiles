#!/bin/zsh

echo "install xcode cli tools\n";
xcode-select --install

echo "install ohmyzsh\n";
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)”;

echo "install homebrew\n";
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)”;

echo "export homebrew env var\n";
echo "export PATH=/opt/homebrew/bin:$PATH" >> ~/.zshrc;
source ~/.zshrc;

echo "install nvm\n";
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash;
source ~/.zshrc;

echo "nvm - install versions\n";
nvm install lts;
nvm install lts/erbium;
nvm install lts/fermium;

echo "rvm - install\n";
curl -L https://get.rvm.io | bash -s stable;

echo "add rvm to path and source it\n";
echo "export "HOME/.rvm/bin:$PATH"" >> ~/.zshrc;
source ~/.zshrc;

echo "export necessary flags\n";
export warnflags=-Wno-error=implicit-function-declaration;

echo "rvm install ruby-2.6.5\n";
rvm install --default 2.6.5;

echo "install java\n";
brew install openjdk@11;

echo "symlink system wrappers to java\n";
sudo ln -sfn /opt/homebrew/opt/openjdk@11/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk-11.jdk;

echo "export java to PATH\n";
echo 'export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"' >> ~/.zshrc;

echo "install apps\n";
brew install neovim postman watchmam;

echo "install casks\n";
brew install --cask visual-studio-code flipper android-studio postman stats rectangle spotify slack zoom dbeaver google-chrome;

