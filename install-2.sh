# echo "Manual Execution"
# sdk install java 8.0.292.j9-adpt
# sdk install java 11.0.11.j9-adpt
# sdk install maven
# git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
# ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
# apt install fonts-firacode -y
# apt install fonts-powerline -y
# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash

# echo "\n\nInstall Kubectx and Kubens with Completions"
# wget https://raw.githubusercontent.com/ahmetb/kubectx/master/kubectx
# wget https://raw.githubusercontent.com/ahmetb/kubectx/master/kubens
# chmod +x kubectx
# chmod +x kubens
# mv kubectx ~/.oh-my-zsh/tools/kubectx
# mv kubens ~/.oh-my-zsh/tools/kubens

# wget https://raw.githubusercontent.com/ahmetb/kubectx/master/completion/kubectx.zsh
# wget https://raw.githubusercontent.com/ahmetb/kubectx/master/completion/kubens.zsh

# mkdir -p ~/.oh-my-zsh/completions
# mv kubectx.zsh ~/.oh-my-zsh/completions/_kubectx.zsh
# mv kubens.zsh ~/.oh-my-zsh/completions/_kubens.zsh

# echo "\n\nWebstorm File Watcher"
# echo "\nfs.inotify.max_user_watches=524288" >> /etc/sysctl.conf
sysctl -p