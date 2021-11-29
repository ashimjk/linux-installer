#!/bin/zsh
JDK_8_VERSION=8.0.292.j9-adpt
JDK_11_VERSION=11.0.11.j9-adpt

export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"


echo "Installing JDK 8"
echo "--------------------------------------"
sdk install java ${JDK_8_VERSION}


echo "\n\nInstalling JDK 11 (Blocker)"
echo "--------------------------------------"
sdk install java ${JDK_11_VERSION}


echo "\n\nInstalling Maven"
echo "--------------------------------------"
sdk install maven


echo "\n\nInstalling Fonts Firacode (Blocker)"
echo "--------------------------------------"
sudo apt install fonts-firacode -yq


echo "\n\nInstalling Font Powerline"
echo "--------------------------------------"
sudo apt install fonts-powerline -y


echo "\n\nInstalling NVM (Blocker)"
echo "--------------------------------------"
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash

# Add following lines in .zshrc
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


echo "\n\nInstalling Kube-PS1"
wget https://raw.githubusercontent.com/jonmosco/kube-ps1/master/kube-ps1.sh
chmox +x kube-ps1.sh
mv kube-ps1.sh ~/.oh-my-zsh/tools/kube-ps1.sh


echo "\n\nInstalling Kubectx and Kubens with Completions"
wget https://raw.githubusercontent.com/ahmetb/kubectx/master/kubectx
wget https://raw.githubusercontent.com/ahmetb/kubectx/master/kubens
chmod +x kubectx
chmod +x kubens
mv kubectx ~/.oh-my-zsh/tools/kubectx
mv kubens ~/.oh-my-zsh/tools/kubens

wget https://raw.githubusercontent.com/ahmetb/kubectx/master/completion/kubectx.zsh
wget https://raw.githubusercontent.com/ahmetb/kubectx/master/completion/kubens.zsh

mkdir -p ~/.oh-my-zsh/completions
mv kubectx.zsh ~/.oh-my-zsh/completions/_kubectx.zsh
mv kubens.zsh ~/.oh-my-zsh/completions/_kubens.zsh


echo "\n\nInstalling Webstorm File Watcher"
sudo sh -c 'echo "\nfs.inotify.max_user_watches=524288" >> /etc/sysctl.conf'
sudo sysctl -p
