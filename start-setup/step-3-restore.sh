#!/bin/bash

read -p 'Backup Directory : ' backupvar
read -p 'Restore Directory : ' restorevar

INTELLIJ="IntelliJIdea2021.1"
WEBSTORM="WebStorm2021.2"
PYSTORM=""
DATAGRIP="DataGrip2021.2"

BACKUP_PATH=$backupvar
RESTORE_PATH=$restorevar

find $BACKUP_PATH -type d -exec chmod 755 {} \;
find $BACKUP_PATH -type f -exec chmod 644 {} \;
chown -R ${USER}:${USER} $BACKUP_PATH

mkdir -p $RESTORE_PATH


echo "Restore Oh-My-Zsh"
# --------------------------------------
mkdir -p $RESTORE_PATH/.oh-my-zsh/completions
mkdir -p $RESTORE_PATH/.oh-my-zsh/tools

cp $BACKUP_PATH/.oh-my-zsh/completions/_dtk.zsh $RESTORE_PATH/.oh-my-zsh/completions/_dtk.zsh
cp $BACKUP_PATH/.oh-my-zsh/tools/kubectl_aliases $RESTORE_PATH/.oh-my-zsh/tools/kubectl_aliases


echo "Restore Konsole"
# --------------------------------------
mkdir -p $RESTORE_PATH/.local/share/konsole

cp -r $BACKUP_PATH/.config/konsolerc $RESTORE_PATH/.config
cp $BACKUP_PATH/.local/share/konsole/AJK.profile $RESTORE_PATH/.local/share/konsole/AJK.profile
cp $BACKUP_PATH/.local/share/konsole/Edna.colorscheme $RESTORE_PATH/.local/share/konsole/Edna.colorscheme


echo "Backup GH"
# --------------------------------------
mkdir -p $RESTORE_PATH/.config/gh

cp $BACKUP_PATH/.config/gh/hosts.yml $RESTORE_PATH/.config/gh/hosts.yml


echo "Restore Vlc"
# --------------------------------------
cp -r $BACKUP_PATH/.local/share/vlc $RESTORE_PATH/.local/share


echo "Restore Docker"
# --------------------------------------
mkdir -p $RESTORE_PATH/.docker

cp $BACKUP_PATH/.docker/config.json $RESTORE_PATH/.docker/config.json


echo "Restore Kube"
# --------------------------------------
mkdir -p $RESTORE_PATH/.kube

cp $BACKUP_PATH/.kube/config $RESTORE_PATH/.kube/config
cp $BACKUP_PATH/.kube/config-k $RESTORE_PATH/.kube/config-k
cp $BACKUP_PATH/.kube/config-o $RESTORE_PATH/.kube/config-o


echo "Restore Maven"
# --------------------------------------
mkdir -p $RESTORE_PATH/.m2

cp $BACKUP_PATH/.m2/settings.xml $RESTORE_PATH/.m2/settings.xml


echo "Restore SSH"
# --------------------------------------
cp -r $BACKUP_PATH/.ssh $RESTORE_PATH
chmod 700 $RESTORE_PATH/.ssh
chmod 600 $RESTORE_PATH/.ssh/*_ed25519
chmod 644 $RESTORE_PATH/.ssh/*_ed25519.pub
chmod 664 $RESTORE_PATH/.ssh/config
chmod 644 $RESTORE_PATH/.ssh/known_hosts


echo "Restore Git Config"
# --------------------------------------
cp $BACKUP_PATH/.gitconfig $RESTORE_PATH


echo "Restore Npmrc"
# --------------------------------------
cp $BACKUP_PATH/.npmrc $RESTORE_PATH


echo "Restore Vimrc"
# --------------------------------------
cp $BACKUP_PATH/.vimrc $RESTORE_PATH


echo "Backup Tools"
# --------------------------------------
sudo mkdir -p $RESTORE_PATH/usr/local/bin

chmod +x $BACKUP_PATH/usr/local/bin/ajk-jekyll
chmod +x $BACKUP_PATH/usr/local/bin/ajk-workspace
chmod +x $BACKUP_PATH/usr/local/bin/dtk
chmod +x $BACKUP_PATH/usr/local/bin/memory-cleanup
chmod +x $BACKUP_PATH/usr/local/bin/sdk-tool
chmod +x $BACKUP_PATH/usr/local/bin/zxc

sudo mv $BACKUP_PATH/usr/local/bin/ajk-jekyll /usr/local/bin/ajk-jekyll
sudo mv $BACKUP_PATH/usr/local/bin/ajk-workspace /usr/local/bin/ajk-workspace
sudo mv $BACKUP_PATH/usr/local/bin/dtk /usr/local/bin/dtk
sudo mv $BACKUP_PATH/usr/local/bin/memory-cleanup /usr/local/bin/memory-cleanup
sudo mv $BACKUP_PATH/usr/local/bin/sdk-tool /usr/local/bin/sdk-tool
sudo mv $BACKUP_PATH/usr/local/bin/zxc /usr/local/bin/zxc
