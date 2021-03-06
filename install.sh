#!/bin/bash

DOTFILES_PATH=$HOME/.dotfiles

# Homebrew installation
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# oh-my-zsh installation
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

ln -sf $DOTFILES_PATH/.zshrc $HOME/.zshrc

# Applications installation
brew bundle install --file=$DOTFILES_PATH/Brewfile

# Symlink for the JDK
sudo ln -sfn /opt/homebrew/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk

# git configuration installation
ln -sf $DOTFILES_PATH/.gitconfig $HOME/.gitconfig

source $HOME/.zshrc

# VS Code extensions
code --install-extension Angular.ng-template
code --install-extension dbaeumer.vscode-eslint
code --install-extension Equinusocio.vsc-community-material-theme
code --install-extension Equinusocio.vsc-material-theme
code --install-extension esbenp.prettier-vscode
code --install-extension ms-azuretools.vscode-docker
code --install-extension MS-CEINTL.vscode-language-pack-fr
code --install-extension nrwl.angular-console
code --install-extension PKief.material-icon-theme
code --install-extension docsmsft.docs-markdown