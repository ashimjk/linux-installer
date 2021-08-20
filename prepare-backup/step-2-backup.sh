#!/bin/bash

read -p 'Backup Directory : ' backupvar

INTELLIJ="IntelliJIdea2021.1"
WEBSTORM="WebStorm2021.2"
PYSTORM=""
DATAGRIP="DataGrip2021.2"

BACKUP_PATH=$backupvar

rm -rf $BACKUP_PATH
mkdir -p $BACKUP_PATH
mkdir -p $BACKUP_PATH/.config
mkdir -p $BACKUP_PATH/.local
mkdir -p $BACKUP_PATH/.local/share


echo "Backup Oh-My-Zsh"
# --------------------------------------
mkdir -p $BACKUP_PATH/.oh-my-zsh/completions
mkdir -p $BACKUP_PATH/.oh-my-zsh/tools

cp ~/.oh-my-zsh/completions/_dtk.zsh $BACKUP_PATH/.oh-my-zsh/completions/_dtk.zsh
cp ~/.oh-my-zsh/tools/kubectl_aliases $BACKUP_PATH/.oh-my-zsh/tools/kubectl_aliases


echo "Backup Intellij"
# --------------------------------------
mkdir -p $BACKUP_PATH/.config/JetBrains/$INTELLIJ/codestyles
mkdir -p $BACKUP_PATH/.config/JetBrains/$INTELLIJ/keymaps

cp ~/.config/JetBrains/$INTELLIJ/codestyles/AJK-Style.xml $BACKUP_PATH/.config/JetBrains/$INTELLIJ/codestyles/AJK-Style.xml
cp ~/.config/JetBrains/$INTELLIJ/keymaps/AJK-Keymap.xml $BACKUP_PATH/.config/JetBrains/$INTELLIJ/keymaps/AJK-Keymap.xml


echo "Backup Webstorm"
# --------------------------------------
mkdir -p $BACKUP_PATH/.config/JetBrains/$WEBSTORM/codestyles
mkdir -p $BACKUP_PATH/.config/JetBrains/$WEBSTORM/keymaps
mkdir -p $BACKUP_PATH/.config/JetBrains/$WEBSTORM/templates

cp ~/.config/JetBrains/$WEBSTORM/codestyles/AJK-Style.xml $BACKUP_PATH/.config/JetBrains/$WEBSTORM/codestyles/AJK-Style.xml
cp ~/.config/JetBrains/$WEBSTORM/keymaps/AJK-Keymap.xml $BACKUP_PATH/.config/JetBrains/$WEBSTORM/keymaps/AJK-Keymap.xml
cp ~/.config/JetBrains/$WEBSTORM/templates/user.xml $BACKUP_PATH/.config/JetBrains/$WEBSTORM/templates/user.xml


echo "Backup DataGrip"
# --------------------------------------
mkdir -p $BACKUP_PATH/.config/JetBrains/$DATAGRIP/codestyles
mkdir -p $BACKUP_PATH/.config/JetBrains/$DATAGRIP/keymaps
mkdir -p $BACKUP_PATH/.config/JetBrains/$DATAGRIP/templates

cp ~/.config/JetBrains/$DATAGRIP/codestyles/AJK-Style.xml $BACKUP_PATH/.config/JetBrains/$DATAGRIP/codestyles/AJK-Style.xml
cp ~/.config/JetBrains/$DATAGRIP/keymaps/AJK-Keymap.xml $BACKUP_PATH/.config/JetBrains/$DATAGRIP/keymaps/AJK-Keymap.xml
cp ~/.config/JetBrains/$DATAGRIP/templates/user.xml $BACKUP_PATH/.config/JetBrains/$DATAGRIP/templates/user.xml


echo "Backup Konsole"
# --------------------------------------
mkdir -p $BACKUP_PATH/.config/konsolerc
mkdir -p $BACKUP_PATH/.local/share/konsole

cp ~/.config/konsolerc $BACKUP_PATH/.config/konsolerc
cp ~/.local/share/konsole/AJK.profile $BACKUP_PATH/.local/share/konsole/AJK.profile
cp ~/.local/share/konsole/Edna.colorscheme $BACKUP_PATH/.local/share/konsole/Edna.colorscheme


echo "Backup GH"
# --------------------------------------
mkdir -p $BACKUP_PATH/.config/gh

cp ~/.config/gh/hosts.yml $BACKUP_PATH/.config/gh/hosts.yml


echo "Backup Vlc"
# --------------------------------------
cp -r ~/.local/share/vlc $BACKUP_PATH/.local/share


echo "Backup Docker"
# --------------------------------------
mkdir -p $BACKUP_PATH/.docker

cp ~/.docker/config.json $BACKUP_PATH/.docker/config.json


echo "Backup Kube"
# --------------------------------------
mkdir -p $BACKUP_PATH/.kube

cp ~/.kube/config $BACKUP_PATH/.kube/config
cp ~/.kube/config-k $BACKUP_PATH/.kube/config-k
cp ~/.kube/config-o $BACKUP_PATH/.kube/config-o


echo "Backup Maven"
# --------------------------------------
mkdir -p $BACKUP_PATH/.m2

cp ~/.m2/settings.xml $BACKUP_PATH/.m2/settings.xml


echo "Backup SSH"
# --------------------------------------
cp -r ~/.ssh $BACKUP_PATH


echo "Backup Git Config"
# --------------------------------------
cp ~/.gitconfig $BACKUP_PATH


echo "Backup Npmrc"
# --------------------------------------
cp ~/.npmrc $BACKUP_PATH


echo "Backup Vimrc"
# --------------------------------------
cp ~/.vimrc $BACKUP_PATH


echo "Backup Zshrc"
# --------------------------------------
cp ~/.zsh_history $BACKUP_PATH
cp ~/.zshrc $BACKUP_PATH


echo "Backup Tools"
# --------------------------------------
mkdir -p $BACKUP_PATH/usr/local/bin

sudo cp /usr/local/bin/ajk-jekyll $BACKUP_PATH/usr/local/bin/ajk-jekyll
sudo cp /usr/local/bin/ajk-workspace $BACKUP_PATH/usr/local/bin/ajk-workspace
sudo cp /usr/local/bin/dtk $BACKUP_PATH/usr/local/bin/dtk
sudo cp /usr/local/bin/memory-cleanup $BACKUP_PATH/usr/local/bin/memory-cleanup
sudo cp /usr/local/bin/sdk-tool $BACKUP_PATH/usr/local/bin/sdk-tool
sudo cp /usr/local/bin/zxc $BACKUP_PATH/usr/local/bin/zxc

sudo chown -R ${USER}:${USER} $BACKUP_PATH/usr
